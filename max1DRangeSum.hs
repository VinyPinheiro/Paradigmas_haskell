import Data.Char
import Helper
import Max1D
  
main = do
    putStrLn "Aguarde... O sistema está encontrando o valor da maior sequência."
    rs <- getAllLines
    
    putStrLn ("A soma eh: " ++ (show (max1dRangeSum (stringToInt rs))))

    putStrLn ("\nObrigado por utilizar!")