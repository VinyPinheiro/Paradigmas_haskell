import Data.Char
import Helper
import Max1D
  
main = do
    putStrLn "Aguarde... O sistema está encontrando a sequência com maior soma."
    rs <- getAllLines

    putStrLn (show (max1dRange (stringToInt rs)))

    putStrLn ("\nObrigado por utilizar!")