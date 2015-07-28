factorial::(Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

addTuples::(Num a) => (a, a) -> (a, a) -> (a, a)
addTuples (a, b) (c, d) = (a + c, b + d)

flattenTuples xs = [a + b | (a, b) <- xs]

sum'::(Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum xs

bmi::(RealFloat a) => a -> a -> String
bmi weight height
	| weight / height ^ 2 <= 18.5 = "Tip to shape"
	| weight / height ^ 2 <= 25.0 = "Okayish shape"
	| weight / height ^ 2 <= 30.0 = "Overweight"
	| otherwise = "You're a whale!"
	
max'::(Ord a) => a -> a -> a
max' a b
	|a > b = a
	|otherwise = b
	
min'::(Ord a) => a -> a -> a
min' a b =	