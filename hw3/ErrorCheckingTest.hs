import Base
import Prelude hiding (LT, GT, EQ)
import ErrorChecking
-- import FirstClassFunctionsParse

t1 = parseExp ("var x = 10;"++
               "x")

main = do
  tagged "ErrorCheckingT1" (test "execute" execute t1)
