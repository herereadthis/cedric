module Chapter2.SimpleFunctions where


{-
-- load file: :l
Prelude> :l src/Chapter2/SimpleFunctions.hs
*Chapter2.SimpleFunctions> firstOrEmpty []
*Chapter2.SimpleFunctions> firstOrEmpty ["hello", "world"]
-}

firstOrEmpty :: [[Char]] -> [Char]
firstOrEmpty lst = if not (null lst) then head lst else "empty"