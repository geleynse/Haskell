main = print (head ([x | x <- [380,760..], sum (map (mod x) [1..20]) == 0]))