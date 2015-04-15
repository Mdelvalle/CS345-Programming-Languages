import Base
import Prelude hiding (LT, GT, EQ)
import FirstClassFunctions
import FirstClassFunctionsParse

p1 = parseExp ("var T = function(a) { function(b) { a } };"++
               "var F = function(a) { function(b) { b } };"++
               "var not = function(b) { b(F)(T) };"++
               "not(F)")

p2 = parseExp ("var f = function (a, b) { a + 2 * b };"++
			   "f(3, 4) - f(5, 2)")

p3 = parseExp ("var f = function (a, (b)) { a + 2 * b};"++
			   "f(3, (4)) - f(5, (2))")

p4 = parseExp ("var z = 10;"++
			   "var y = z * 2;"++
			   "y / z")

p5 = parseExp ("var (x,y) = (6, 3);"++
			   "x/y")

p6 = parseExp ("var z = 10;"++
			   "var (x,y) = (3, 2);"++
			   "y")

p7 = parseExp ("var z = 10;"++
			   "var (x, y) = (3, z*2);"++
			   "y / z")

p8 = parseExp ("var f = function (a, (b, c)) { a + 2 * b + c };"++
			   "f(3, (4, 5)) - f(5, (2, 1))")

p9 = parseExp ("var z = 10;"++
			   "var (x,y) = (3, 2);"++
			   "x")

p10 = parseExp ("var z = 10;"++
				"var (x,y) = (1,z);"++
				"z")
               
main = do
  tagged "FirstClassT1" (test "execute" execute p1)
  tagged "FirstClassT2" (test "execute" execute p2)
  tagged "FirstClassT3" (test "execute" execute p3)
  tagged "FirstClassT4" (test "execute" execute p4)
  tagged "FirstClassT5" (test "execute" execute p5)
  tagged "FirstClassT6" (test "execute" execute p6)
  tagged "FirstClassT7" (test "execute" execute p7)
  tagged "FirstClassT8" (test "execute" execute p8)
  tagged "FirstClassT9" (test "execute" execute p9)
  tagged "FirstClassT10" (test "execute" execute p10)
