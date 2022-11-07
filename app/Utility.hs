module Utility where

import qualified Data.Map as Map
import Database
import Types
import Action

checkSize :: String -> Bool
checkSize s = length s == 5

lookUpWordOfTheDay :: Int -> Maybe WordleOfTheDay
lookUpWordOfTheDay i = Map.lookup i wordOfTheDayDb

showCross :: Cross -> String
showCross X = "X"

