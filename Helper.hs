module Helper(
stringToInt,
getAllLines
) where

stringToInt :: [[Char]] -> [Int]
stringToInt [] = []
stringToInt [x] = [read x :: Int]
stringToInt valor = [read (head valor) :: Int] ++ stringToInt (tail valor)


getAllLines :: IO [String]
getAllLines = do
  x <- getLine
  if x == "end"
    then return []
    else do
      xs <- getAllLines
      return (x:xs)
