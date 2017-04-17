import Data.Char  
import qualified Data.List  
  
main = do
    putStrLn "Aguarde... O sistema está encontrando o valor da maior sequência."
    rs <- getAllLines

    putStrLn (show (max1d (stringToInt rs)))

    putStrLn ("\nObrigado por utilizar!")

stringToInt :: [[Char]] -> [Int]
stringToInt [] = []
stringToInt [x] = [read x :: Int]
stringToInt valor = [read (head valor) :: Int] ++ stringToInt (tail valor)

max1d :: (Ord a, Num a) => [a] -> a
max1d xs = maximum (map sum (subsequences xs))


subsequences :: [a] -> [[a]]
subsequences = concatMap Data.List.inits . Data.List.tails

getAllLines :: IO [String]
getAllLines = do
  x <- getLine
  if x == "end"
    then return []
    else do
      xs <- getAllLines
      return (x:xs)