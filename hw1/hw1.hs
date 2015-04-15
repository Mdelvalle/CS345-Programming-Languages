fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

primes :: [Integer]
primes = 2 : filter (isPrime primes) [3,5..]
  where
    isPrime (p:ps) n
      | mod n p == 0 = False
      | p*p > n      = True
      | otherwise    = isPrime ps n
    isPrime [] _ = False


compute x y = compute' x 1 y
  where
    compute' _ _ [] = []
    compute' [] _ _ = []
    compute' (a:as) i (b:bs) | a > i = compute' (a:as) (i+1) bs
    compute' (a:as) i (b:bs) | a == i = b:compute' as i (b:bs)
    compute' (a:as) i (b:bs) = compute' as i (b:bs)

partC = compute primes fibs
partD = compute fibs primes

n = 10
main = do
     print (take n fibs)
     print (take n primes)
     print (take n partC)
     print (take n partD)
