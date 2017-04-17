import Data.Char
import Helper
import Max1D
  
main = do
    putStrLn "Aguarde... O sistema está encontrando a sequência com maior soma."
    rs <- getAllLines

    putStrLn (show (max1d (stringToInt rs)))

    putStrLn ("\nObrigado por utilizar!")