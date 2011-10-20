isdiv n = (mod n 3) == 0 || (mod n 5) == 0

main = print (sum (filter isdiv [1..999]))
