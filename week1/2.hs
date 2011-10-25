sumevenfibto' limit sum n1 n2 = if n2 >= limit
								then sum
								else sumevenfibto' limit (if even next then (sum + next) else sum) (n2) (next)
								where next = n1 + n2

sumevenfibto limit = sumevenfibto' limit 2 1 2

main = print (sumevenfibto 4000000)
