import Data.Char  
import qualified Data.List (inits, tails, maximumBy)
import Data.Ord (comparing)
  
main = do
    putStrLn "Aguarde... O sistema está encontrando a sequência com maior soma."
    rs <- getAllLines

    putStrLn (show (max1d (stringToInt rs)))

    putStrLn ("\nObrigado por utilizar!")

stringToInt :: [[Char]] -> [Int]
stringToInt [] = []
stringToInt [x] = [read x :: Int]
stringToInt valor = [read (head valor) :: Int] ++ stringToInt (tail valor)


subsequences :: [a] -> [[a]]
subsequences = concatMap Data.List.inits . Data.List.tails

max1d :: (Ord a, Num a) => [a] -> [a]
max1d = Data.List.maximumBy (comparing sum) . subsequences

getAllLines :: IO [String]
getAllLines = do
  x <- getLine
  if x == "end"
    then return []
    else do
      xs <- getAllLines
      return (x:xs)
