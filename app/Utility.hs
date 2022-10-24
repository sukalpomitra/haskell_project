module Utility where

import qualified Data.Map as Map
import Database
import Types

checkSize :: String -> Bool
checkSize s = length s == 5

lookUpWordOfTheDay :: Int -> Maybe WordleOfTheDay
lookUpWordOfTheDay i = Map.lookup i wordOfTheDayDb