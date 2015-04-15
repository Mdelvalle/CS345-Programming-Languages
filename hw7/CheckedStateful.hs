module CheckedStateful where

import Prelude hiding (LT, GT, EQ, id)
import ErrorChecking hiding (evaluate, execute)
import Stateful hiding (evaluate, execute)

data CheckedStateful t = CST (Memory -> (Checked t, Memory))

returnChecked cv = CST (\m-> (cv, m))
returnError msg  = returnChecked (Error msg)
returnReturn rv  = returnChecked (Return rv)

instance Monad CheckedStateful where
  return v = returnChecked (Good v)
  (CST c) >>= f =
    CST (\m -> 
      let (val, m') = c m in
        case val of
          Error msg -> (Error msg, m')
          Return v  -> (Return v, m')
          Good v    ->
            let CST f' = f v in
              f' m'
      )

handleReturn :: CheckedStateful Value -> CheckedStateful Value
handleReturn (CST f) = 
  CST (\m ->
    let (cv, m') = f m in
      case cv of
        Return v  -> (Good v, m')
        Good v    -> (Good Undefined, m')
        Error msg -> (Error msg, m')
    )

evaluate :: Exp -> Env -> CheckedStateful Value
evaluate (Literal v) env = return v

evaluate (Unary op a) env = do
  av <- evaluate a env
  returnChecked (checked_unary op av)

evaluate (Binary op a b) env = do
  av <- evaluate a env
  bv <- evaluate b env
  returnChecked (checked_binary op av bv)

evaluate (If a b c) env = do
  av <- evaluate a env
  case av of
    (BoolV cond) -> evaluate (if cond then b else c) env
    _ -> returnError ("Expected boolean but found " ++ show av)

-- variables and declarations
evaluate (Variable x) env    =
  case lookup x env of
    Nothing -> returnError ("Variable " ++ x ++ " undefined")
    Just v  -> return v

evaluate (Declare x e body) env = do    -- non-recursive case
  ev <- evaluate e env
  let newEnv = (x, ev) : env
  evaluate body newEnv

-- function definitions and function calls
evaluate (Function x body) env = return (ClosureV x body env)

evaluate (Call fun arg) env = do
  funv <- evaluate fun env
  case funv of
    ClosureV x body closeEnv -> do
      argv <- evaluate arg env
      let newEnv = (x, argv) : closeEnv
      handleReturn (evaluate body newEnv)
    _ -> returnError ("Expected function but found " ++ show funv)

-- mutation operations
evaluate (Seq a b) env = do
  evaluate a env
  evaluate b env

evaluate (Mutable e) env = do
  ev <- evaluate e env
  newMemory ev

evaluate (Access a) env = do
  av <- evaluate a env
  case av of
    AddressV i -> readMemory i
    _ -> returnError ("Access of invalid memory " ++ show av)

evaluate (Assign a e) env = do
  av <- evaluate a env
  case av of
    AddressV i -> do
      ev <- evaluate e env
      updateMemory ev i
    _ -> returnError ("Update of invalid memory " ++ show av)

-- new return statement
evaluate (ReturnT a) env = do
  av <- evaluate a env
  returnReturn av

newMemory val = CST (\mem-> (Good (AddressV (length mem)), mem ++ [val]))

readMemory i = CST (\mem-> (Good (access i mem), mem))

updateMemory val i = CST (\mem-> (Good val, update i val mem))

runStateful (CST c) = 
   let (val, mem) = c [] in val

execute exp = runStateful (evaluate exp [])
