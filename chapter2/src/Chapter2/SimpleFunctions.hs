module Chapter2.SimpleFunctions where


{-
-- load file: :l
Prelude> :l src/Chapter2/SimpleFunctions.hs
*Chapter2.SimpleFunctions> firstOrEmpty []
*Chapter2.SimpleFunctions> firstOrEmpty ["hello", "world"]
-}

firstOrEmpty :: [[Char]] ->Char]
firstOrEmpty lst = if not (null lst) then head lst else "empty"

{-
concatenation function
symbolic names such as +++ go betwee variables
when concatenating 2 lists where the first list is empty and the 2nd is not,
then just return 2nd list.
otherwise, create a new list by grabbing the head of first list, then append 
with the function recursively.
add element to the start of a list with colon -> 1 : [2,3] = [1,2,3]
e.g. [1,2] +++ [3,4] means add 1 to a list foo. The list foo is the tail of
[1,2] +++ [3,4], etc. 1:(2:[3,4])
-}
lst1 +++ lst2 = if null lst1 {- check if first list is empty -}
                then lst2 -- return second list if first list is empty
                else (head lst1) : (tail lst1 +++ lst2)