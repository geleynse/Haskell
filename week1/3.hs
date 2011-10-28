import Data.List

getfactor :: (Integral t) => t -> [t]
getfactor x = [y | y <- [2..floor (sqrt (fromIntegral x))], (mod x y) == 0]

nextfactor :: (Integral t) => t -> Maybe(t,t)
nextfactor x 
	| x == 1 = Nothing
	| null (getfactor x) = Just(x, 1)
	| otherwise = Just(head (getfactor x), floor ((fromIntegral x) / (fromIntegral (head (getfactor x)))))



main =
	print (last (unfoldr nextfactor 600851475143))
