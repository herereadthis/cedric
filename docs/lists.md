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