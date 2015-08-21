-- largestDivisible
largestDivisible::(Integral a) => a -> a -> a
largestDivisible x y = head (filter p [x, x - 1..])
	where p n = n `mod` y == 0