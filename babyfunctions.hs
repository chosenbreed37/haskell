doubleMe x = x + x

doubleSmallNumber x = if x > 100 then x * 2 else x

boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]

length' xs = sum [1 | _ <- xs]

removeLowercase xs = [c | c <- xs, c `elem` ['A'..'Z']]

rightTriangles = [(a, b, c) | a <- [1..10], b <- [1..10], c <- [1..10], a + b + c == 24, a^2 + b^2 == c^2]

rightTriangles' = [(a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a + b + c == 24, a^2 + b^2 == c^2]