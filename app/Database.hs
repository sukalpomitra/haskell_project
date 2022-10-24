module Database where

import qualified Data.Map as Map
import Types

wordOfTheDayDb :: Map.Map Int WordleOfTheDay
wordOfTheDayDb = Map.fromList keyVals
    where keys = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
          vals = ["WEARY", "PILLS", "VAGUE", "WATER", "STORM", "RIDER", "POINT", "TEARS", "CROWD", "BOATS"]
          keyVals = zip keys vals    