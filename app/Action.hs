module Action where

import System.Random( randomRIO )
import qualified Data.Map as Map

getRandomNumber :: IO Int
getRandomNumber = randomRIO (1, 10)
    
