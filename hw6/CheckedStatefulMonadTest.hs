module CheckedStatefulTest where

import Base
import CheckedStatefulMonad
import CheckedStatefulParse
--import Stateful hiding (Stateful, evaluate, execute)

t1 = execute (parseExp "4")

t2 = execute (parseExp "var i = 2; i")

t3 = execute (parseExp "var i = ref 2; @i")

t4 = execute (parseExp "var i = ref 5; i = @i + 3; @i")

t5 = execute (parseExp "10/2")

t6 = execute (parseExp "1/0")

t7 = execute (parseExp "var i = ref 5; @5")

t8 = execute (parseExp "var p = ref(ref 0); var q = ref 1; p = q; @@p")

t9 = execute (parseExp "var p = ref(ref 0); p = p; @@@@@@p")

t10 = execute (parseExp "5 = ref 0")

main = do
  tagged "t1" (print t1)
  tagged "t2" (print t2)
  tagged "t3" (print t3)
  tagged "t4" (print t4)
  tagged "t5" (print t5)
  tagged "t6" (print t6)
  tagged "t7" (print t7)
  tagged "t8" (print t8)
  tagged "t9" (print t9)
  tagged "t10" (print t10)
