module Utility where

import qualified Data.Map as Map
import Database
import Types
-- import Action

checkSize :: String -> Bool
checkSize s = length s == 5

lookUpWordOfTheDay :: Int -> Maybe WordleOfTheDay
lookUpWordOfTheDay i = Map.lookup i wordOfTheDayDb

validateGuess :: String -> String -> String
validateGuess [] _ = ""
validateGuess _ [] = ""
validateGuess (x:xs) (a:as) = if x /= a then "X" else a : validateGuess xs as