module Main where

import Utility
import Database
import Action

main :: IO ()
main = do
    randomNumber <- getRandomNumber
    wordleWordOfTheDay <- lookUpWordOfTheDay randomNumber
    print wordleWordOfTheDay
    putStrLn "Wordle: Guess the 5 letter word for today"
    guessedWord <- getLine
    if not (checkSize guessedWord)
        then putStrLn "Wordle: Please enter a 5 letter word" >> main
    else 
        putStrLn guessedWord