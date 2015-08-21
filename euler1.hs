-- Multiples of 3 and 5
Euler1::Int
Euler1 = sum [n | n <- [1..1000], n `mod` 3 == 0 || n `mod` 5 == 0]