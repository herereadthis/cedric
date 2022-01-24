# Lists

## Operations

```haskell
-- reverse a list
reverse [4,3,2,1]
-- [1,2,3,4]

-- extract n elements from the beginning of a list
take 2 [1,2,3,4]
-- [1,2]
take 5 [1,2,3,4]
-- [1,2,3,4]
take 0 [1,2,3,4]
-- []

-- remove n elements from the beginning of a list
drop 2 [1,2,3,4]
-- [3,4]
drop 0 [1,2,3,4]
-- [1,2,3,4]
drop 5 [1,2,3,4]
-- []

-- self-explanatory
maximum [1,2,3,4]
-- 4
minimum [1,2,3,4]
-- 1
sum [1,2,3,4]
-- 10
product [1,2,3,4]
-- 24

-- create a list without typing all the in-betwen stuff
[1..4]
-- [1,2,3,4]
['A'..'Z']
-- 'ABCD'

-- specify range steps
[3,6,20]
-- [3,6,9,12,15,18]

-- infinite lists (use take to prevent inifinite elements)
take 6 (cycle [1..4])
-- [1,2,3,4,1,2]
take 4 (repeat 5)
-- [5,5,5,5]
```

## List Comprehensions

```haskell
-- double all numbers of a list from 1 to 5
[x*2 | x <- [1..5]]
-- [2,4,6,8,10] 

-- predicates/filtering (with a comma). as before, but only where 2x is >= 6
[x*2 | x <- [1..5], x*2 >= 6]
-- [6,8,10]

-- predicate - all numbers from 1 to 100 that are multiples of 7
[x | x <- [1..100], x `mod` 7 == 0]
-- same result
[x*7 | x <- [1..100], x*7 <= 100]
-- [7,14,21,28,35,42,49,56,63,70,77,84,91,98]
```