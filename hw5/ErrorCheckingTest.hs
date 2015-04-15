import Base
import FirstClassFunctions hiding (evaluate, execute)
import FirstClassFunctionsParse
import ErrorChecking

test1 = execute (parseExp "x")

test2 = execute (parseExp "3 / 0")

test3 = execute (parseExp ("var x = 5;" ++
                           "if (x/0) 1; else 2"))

test4 = execute (parseExp "if (true) 1/0; else 2")

test5 = execute (parseExp "if (false) 1; else 2/0")

test6 = execute (parseExp "var x = 3; var f = function (a) { a + 2 * x }; f(3) - f(5)")

test7 = execute (parseExp "var h = if (y) 1; else 0; h")

test8 = execute (parseExp "try {if (3 > 1) 1; else 0} catch {z(x)}")

test9 = execute (parseExp "try {var x = 2; x} catch {y}")

test10 = execute (parseExp "try {var x = y*z; x} catch {var x = 2*5; x}")

test11 = execute (parseExp ("var x = 5;" ++
                            "try {x/0} catch {x/1}"))

test12 = execute (parseExp ("var x = 5;" ++
                            "try {x/0} catch {y}"))

main = do
  tagged "test1" (print test1)
  tagged "test2" (print test2)
  tagged "test3" (print test3)
  tagged "test4" (print test4)
  tagged "test5" (print test5)
  tagged "test6" (print test6)
  tagged "test7" (print test7)
  tagged "test8" (print test8)
  tagged "test9" (print test9)
  tagged "test10" (print test10)
  tagged "test11" (print test11)
  tagged "test12" (print test12)
