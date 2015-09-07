-- euler # 5
-- 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
-- What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

divisibleByRange::Int -> Int -> Bool
divisibleByRange _ 0 = False
divisibleByRange _ 1 = True
divisibleByRange x n = x `mod` n == 0 && divisibleByRange x (n - 1)

euler5::Int -> Int
euler5 n = head (filter p [x * n | x <- [1..]])
	where p x = divisibleByRange x n