import Data.Char  
import qualified Data.List (inits, tails, maximumBy)
import Data.Ord (comparing)
  
main = do
    putStrLn "Aguarde... O sistema está encontrando a sequência com maior soma."
    rs <- getAllLines

    putStrLn (show (maxsubseq (stringToInt rs)))

    putStrLn ("\nObrigado por utilizar!")

stringToInt :: [[Char]] -> [Int]
stringToInt [] = []
stringToInt [x] = [read x :: Int]
stringToInt valor = [read (head valor) :: Int] ++ stringToInt (tail valor)


subsequences :: [a] -> [[a]]
subsequences = concatMap Data.List.inits . Data.List.tails

max1d :: (Ord a, Num a) => [a] -> [a]
max1d = Data.List.maximumBy (comparing sum) . subsequences


subseqs :: [a] -> [[a]]
subseqs = concatMap Data.List.inits . Data.List.tails
 
maxsubseq :: (Ord a, Num a) => [a] -> [a]
maxsubseq = Data.List.maximumBy (comparing sum) . subseqs

getAllLines :: IO [String]
getAllLines = do
  x <- getLine
  if x == "end"
    then return []
    else do
      xs <- getAllLines
      return (x:xs)
