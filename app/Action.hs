module Action where

import System.Random( randomRIO )
import qualified Data.Map as Map

getRandomNumber :: IO Int
getRandomNumber = randomRIO (1, 10)

validateGuess :: Maybe String -> String -> IO String
validateGuess expected actual = do
    print expected
    let wotd = expected
    let n = length <$> expected
    print n
    let wotdMap = zip [1..5] <$> wotd
    print wotdMap
    let actualDb = Map.fromList <$> wotdMap
    print actualDb
    getLine
    
