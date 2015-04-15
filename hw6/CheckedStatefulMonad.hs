module CheckedStatefulMonad where

import Prelude hiding (LT, GT, EQ, id)
import Stateful hiding (Stateful, evaluate, execute)
import ErrorChecking hiding (evaluate, checked_unary, checked_binary)
import Base
import Data.Maybe

data CheckedStateful t = CST (Memory -> (Checked t, Memory))

instance Monad CheckedStateful where
  return val = CST (\m -> (Good val, m))
  (CST c) >>= f = 
    CST (\m ->
      let (val, m') = c m in
        case val of
          Good v ->
            let CST f' = f v in
              f' m'
          Error msg -> (Error msg, m'))
      
evaluate :: Exp -> Env -> CheckedStateful Value

evaluate (Literal v) env = return v

evaluate (Unary op a) env = do
  av <- evaluate a env
  checked_unary op av

evaluate (Binary op a b) env = do
  av <- evaluate a env
  bv <- evaluate b env
  checked_binary op av bv
  
evaluate (If a b c) env = do
  av <- evaluate a env
  case av of
    (BoolV cond) -> evaluate (if cond then b else c) env
    _            -> returnError ("Expected boolean but found" ++ show av)

evaluate (Variable x) env = 
  case lookup x env of
    Nothing -> returnError ("Variable " ++ x ++ " undefined")
    Just v  -> return v

evaluate (Declare x e body) env = do    -- non-recursive case
  ev <- evaluate e env
  let newEnv = (x, ev) : env
  evaluate body newEnv

evaluate (Function x body) env = return (ClosureV x body env)

evaluate (Call fun arg) env = do
  ClosureV x body closeEnv <- evaluate fun env
  argv <- evaluate arg env
  let newEnv = (x, argv) : closeEnv
  evaluate body newEnv

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
    _          -> returnError ("Access error")

evaluate (Assign a e) env = do
  av <- evaluate a env
  case av of
    AddressV i -> do
      if (i < 0)
        then
          returnError ("Invalid memory access")
        else do
          ev <- evaluate e env
          updateMemory ev i
          return ev
    _ -> returnError ("Assign error")

newMemory val = CST (\m -> (Good (AddressV (length m)), m ++ [val]))

readMemory i = CST (\m -> (Good (access i m), m))

updateMemory val i = CST (\m -> (Good (), update i val m))

returnError msg = CST (\m -> (Error msg, m))

returnGood v = CST (\m -> (Good v, m))

runStateful (CST c) = 
  let (val, m) = c [] in val

execute exp = runStateful (evaluate exp [])

checked_unary :: UnaryOp -> Value -> CheckedStateful Value
checked_unary Not (BoolV b) = returnGood (BoolV (not b))
checked_unary Neg (IntV i)  = returnGood (IntV (-i))
checked_unary _   _         = returnError "Type error"

checked_binary :: BinaryOp -> Value -> Value -> CheckedStateful Value
checked_binary Add (IntV a)  (IntV b)  = returnGood (IntV (a + b))
checked_binary Sub (IntV a)  (IntV b)  = returnGood (IntV (a - b))
checked_binary Mul (IntV a)  (IntV b)  = returnGood (IntV (a * b))
checked_binary Div (IntV a)  (IntV 0)  = returnError "Divide by zero"
checked_binary Div (IntV a)  (IntV b)  = returnGood (IntV (a `div` b))
checked_binary And (BoolV a) (BoolV b) = returnGood (BoolV (a && b))
checked_binary Or  (BoolV a) (BoolV b) = returnGood (BoolV (a || b))
checked_binary LT  (IntV a)  (IntV b)  = returnGood (BoolV (a < b))
checked_binary LE  (IntV a)  (IntV b)  = returnGood (BoolV (a <= b))
checked_binary GE  (IntV a)  (IntV b)  = returnGood (BoolV (a >= b))
checked_binary GT  (IntV a)  (IntV b)  = returnGood (BoolV (a > b))
checked_binary EQ  a         b         = returnGood (BoolV (a == b))
checked_binary _   _         _         = returnError "Type error"
