module Chapter2.SimpleFunctions where


{-
-- load file: :l
Prelude> :l src/Chapter2/SimpleFunctions.hs
*Chapter2.SimpleFunctions> firstOrEmpty []
*Chapter2.SimpleFunctions> firstOrEmpty ["hello", "world"]
-}

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst = if not (null lst) then head lst else "empty"

{-
concatenation function
symbolic names such as +++ go betwee variables
when concatenating 2 lists where the first list is empty and the 2nd is not,
then just return 2nd list.
otherwise, create a new list by grabbing the head of first list, then append 
with the function recursively.
add element to the start of a list with colon -> 1 : [2,3] = [1,2,3]
e.g. [1,2] +++ [3,4] => 1:([2] +++ [3,4]) => 1:(2:([] +++ [3,4]))
                     => 1:(2:[3,4]) => [1,2,3,4]
-}
lst1 +++ lst2 = if null lst1 {- check if first list is empty -}
                then lst2 -- return second list if first list is empty
                else (head lst1) : (tail lst1 +++ lst2)

{-
reverse a list by taking the reversed tail of a list and putting it at the 
beginning before the head of the list
-}
reverse2 list = if null list
                then []
                else reverse2 (tail list) +++ [head list]

{- don't do this, it makes no sense -}
maxmin1 list = if null (tail list)
              then (head list, head list)
              else ( if (head list) > fst (maxmin (tail list))
                     then head list
                     else fst (maxmin (tail list))
                   , if (head list) < snd (maxmin (tail list))
                     then head list
                     else snd (maxmin (tail list))
                   )

{- 
use local binding: give a name to an expression to be used in a larger one
let binding: introduces bindings before main expressions, use with "in"
where binding: bindings after the main expression

Layout based syntax: indentation location isn't important, as long all elements
in the block start in the same column.
-}
maxmin :: [Float] -> (Float, Float)
maxmin list =   let h = head list
                in if null (tail list)
                    then (h, h)
                    else ( if h > t_max then h else t_max
                         , if h < t_min then h else t_min )
                         where t = maxmin (tail list)
                               t_max = fst t 
                               t_min = snd t 