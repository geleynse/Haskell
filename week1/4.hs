ispalindrome :: Eq t => [t] -> Bool
ispalindrome x = x == (reverse x)

findpalindrome :: Integral t => t -> t -> [t]
findpalindrome min max = [x*y | x <- reverse [min..max], y <- reverse [min..max], ispalindrome (show (x * y))]

findmaxpalindrome :: Integral t => t -> t -> t
findmaxpalindrome min max = maximum (findpalindrome min max)

main = 
	print (findmaxpalindrome 100 999)
