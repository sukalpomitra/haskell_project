module Action where

import System.Random( randomRIO )

getRandomNumber :: IO Int
getRandomNumber = randomRIO (1, 10)