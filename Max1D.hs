module Max1D
(
subsequences,
max1d,
max1dRangeSum
) where

import qualified Data.List
import Data.Ord (comparing)

subsequences :: [a] -> [[a]]
subsequences = concatMap Data.List.inits . Data.List.tails

max1d :: (Ord a, Num a) => [a] -> [a]
max1d = Data.List.maximumBy (comparing sum) . subsequences

max1dRangeSum :: (Ord a, Num a) => [a] -> a
max1dRangeSum xs = maximum (map sum(subsequences xs))