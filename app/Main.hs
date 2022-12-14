module Main where

import Utility
import Database
import Action
import Prelude (getLine, putStrLn)

main :: IO ()
main = do
    randomNumber <- getRandomNumber
    let wordleWordOfTheDay = lookUpWordOfTheDay randomNumber
    putStrLn "Wordle: Guess the 5 letter word for today"
    guessedWord <- getLine
    if not (checkSize guessedWord)
        then putStrLn "Wordle: Please enter a 5 letter word" >> main
    else do
        case wordleWordOfTheDay of
            Nothing -> putStrLn "" >> main
            Just s  -> validateGuess s guessedWord >> putStrLn
    putStrLn ""