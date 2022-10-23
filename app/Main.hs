module Main where

import Validation

main :: IO ()
main = do
    putStrLn "Wordle: Guess the 5 letter word for today"
    guessedWord <- getLine
    if not (checkSize guessedWord)
        then putStrLn "Wordle: Please enter a 5 letter word" >> main
    else 
        putStrLn guessedWord
