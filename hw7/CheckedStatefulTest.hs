import Base
import Prelude hiding (LT, GT, EQ)
import CheckedStateful
import CheckedStatefulParse

p1 = parseExp ("var T = function(a) { return function(b) { return a } };"++
               "var F = function(a) { return function(b) { return b } };"++
               "var not = function(b) { return (b(F)(T)) };"++
               "not(F)")
               
p2 = parseExp (
      "var x = 5;"++
      "var f = function(y) { return x - y };"++
      "var x = f(9);"++
      "f(x)")

p3 = parseExp (
      "var x = 5;"++
      "var f = function(y) { var y = x * y; return function(x) { return x + y } };"++
      "var g = f(2);"++
      "g(5)")

p4 = parseExp (
      "var comp = function(f) { return function(g) { return function(x) { return f(g(x)) }}};"++
      "var inc = function(x) { return x + 1 };"++
      "var square = function(x) { return x * x };"++
      "var f = comp(inc)(square);"++
      "f(5)")

p5 = parseExp (
      "var map = function(f) { return function(x) { return function(y) { return f(x) + f(y) }}};"++
      "var g = function(x) { return x + 1 };"++
      "map(g)(3)(4)")

p6 = parseExp "var i = ref 5; i = @i + 3; @i"

p7 = parseExp "var a = ref (ref 3); a = a; @@@@@a"

e0 = parseExp "1; 2; x; 7"
e1 = parseExp "@3"
e2 = parseExp "if (3) a; else b"
e3 = parseExp "3 + true"
e4 = parseExp "-false"
e5 = parseExp "!3"
e6 = parseExp "3 = 4"
e7 = parseExp "if (3+4) a; else b"
e8 = parseExp "if (3==3) 3(6); else b"

r1 = parseExp "var x = 5; x"
r2 = parseExp "var y = function(f) { var a = f * f; return a }; y(5)"
r3 = parseExp "var f = function(x) { return 5 }; f(4)"
r4 = parseExp "var f = function(x) { return x }; f(4)"
r5 = parseExp "var f = function(x) { 5 }; f(4)"
r6 = parseExp "var f = function(x) { x }; f(4)"
r7 = parseExp "var f = function(x) { return 5 }; f"
r8 = parseExp "var f = function(x) { var y = ref 3; y = 5; y = 3; return 2; y = 5 }; f(1)"
r9 = parseExp "var f = function(x) { return x; return 10 }; f(5)"
r10 = parseExp "var f = function(x) { var x = 5; return x + 10 }; f(10)"
r11 = parseExp "var f = function(x) { return if (false) {x + x} else {x*x} }; f(5)"
r12 = parseExp "var f = function(x) { return var a = 1; a + x }; f(5)"
r13 = parseExp "var f = function(x) { return 1 + 1 }; f(5)"
r14 = parseExp "var f = function(x) { return 1 / 0 }; f(5)"
r15 = parseExp "var f = function(g) { function(x) { if( x < g ) return x; else return g }}; f(0)"

main = do
  tagged "FirstClassT1" (do
  	test "execute" execute p1
  	test "execute" execute p2
  	test "execute" execute p3
  	test "execute" execute p4
  	test "execute" execute p5
  	test "execute" execute p6
  	test "execute" execute p7
   )
  tagged "Errors" (do
  	test "execute" execute e0
  	test "execute" execute e1
  	test "execute" execute e2
  	test "execute" execute e3
  	test "execute" execute e4
  	test "execute" execute e5
  	test "execute" execute e6
  	test "execute" execute e7
  	test "execute" execute e8
   )

  tagged "Returns\n" (do
    test "execute r1:\n" execute r1
    test "execute r2:\n" execute r2
    test "execute r3:\n" execute r3
    test "execute r4:\n" execute r4
    test "execute r5:\n" execute r5
    test "execute r6:\n" execute r6
    test "execute r7:\n" execute r7
    test "execute r8:\n" execute r8
    test "execute r9:\n" execute r9
    test "execute r10:\n" execute r10
    test "execute r11:\n" execute r11
    test "execute r12:\n" execute r12
    test "execute r13:\n" execute r13
    test "execute r14:\n" execute r14
    test "execute r15:\n" execute r15
   ) 	
