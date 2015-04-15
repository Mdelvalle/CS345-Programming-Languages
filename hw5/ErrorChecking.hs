module ErrorChecking where

import Prelude hiding (LT, GT, EQ, id)
import FirstClassFunctions hiding (evaluate)

data Checked a = Good a | Error String
  deriving Show

evaluate :: Exp -> Env -> Checked Value
evaluate (Literal v) env = Good v

evaluate (Variable x) env =
  case lookup x env of
    Nothing -> Error ("Variable " ++ x ++ " undefined")
    Just v  -> Good v

evaluate (Unary op a) env =
  case evaluate a env of
    Error msg -> Error msg
    Good av ->   checked_unary op av

evaluate (Binary op a b) env =
  case evaluate a env of
    Error msg -> Error msg
    Good av ->
      case evaluate b env of
        Error msg -> Error msg
        Good bv ->
          checked_binary op av bv
          
evaluate (If a b c) env = 
    case evaluate a env of
      Error msg -> Error msg
      Good av -> let BoolV test = av in
        if test
          then
            case evaluate b env of
              Error msg -> Error msg
              Good bv -> Good bv
          else
            case evaluate c env of
              Error msg -> Error msg
              Good cv -> Good cv

evaluate (Declare x exp body) env =
  case evaluate exp env of
    Error msg -> Error msg
    Good expv ->
      evaluate body newEnv
        where newEnv = (x, expv) : env

evaluate (Function x body) env = Good (ClosureV x body env)

evaluate (Call fun arg) env =
  case evaluate fun env of
    Error msg -> Error msg
    Good funv ->
      case evaluate arg env of
        Error msg -> Error msg
        Good argv ->
          evaluate body newEnv
          where ClosureV x body closeEnv = funv
                newEnv = (x, argv) : closeEnv

evaluate (Try a b) env = 
  case evaluate a env of 
    Error msg -> 
      case evaluate b env of
        Error msg -> Error msg
        Good bv -> Good bv
    Good av -> Good av

execute exp = evaluate exp []

checked_unary :: UnaryOp -> Value -> Checked Value
checked_unary Not (BoolV b) = Good (BoolV (not b))
checked_unary Neg (IntV i)  = Good (IntV (-i))
checked_unary _   _         = Error "Type error"

checked_binary :: BinaryOp -> Value -> Value -> Checked Value
checked_binary Add (IntV a)  (IntV b)  = Good (IntV (a + b))
checked_binary Sub (IntV a)  (IntV b)  = Good (IntV (a - b))
checked_binary Mul (IntV a)  (IntV b)  = Good (IntV (a * b))
checked_binary Div (IntV a)  (IntV 0)  = Error "Divide by zero"
checked_binary Div (IntV a)  (IntV b)  = Good (IntV (a `div` b))
checked_binary And (BoolV a) (BoolV b) = Good (BoolV (a && b))
checked_binary Or  (BoolV a) (BoolV b) = Good (BoolV (a || b))
checked_binary LT  (IntV a)  (IntV b)  = Good (BoolV (a < b))
checked_binary LE  (IntV a)  (IntV b)  = Good (BoolV (a <= b))
checked_binary GE  (IntV a)  (IntV b)  = Good (BoolV (a >= b))
checked_binary GT  (IntV a)  (IntV b)  = Good (BoolV (a > b))
checked_binary EQ  a         b         = Good (BoolV (a == b))
checked_binary _   _         _         = Error "Type error"
