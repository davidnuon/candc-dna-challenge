module Main where

import Data.Char

dnaT :: Char -> Char
dnaT c | c == 'a' = 't'
       | c == 't' = 'a'
 	   | c == 'g' = 'c'
 	   | c == 'c' = 'g'
 	   | otherwise = c

rnaT :: Char -> Char
rnaT c | c == 't' = 'a'
       | c == 'a' = 'u'
 	   | c == 'g' = 'c'
 	   | c == 'c' = 'g'
 	   | otherwise = c

dna_complement = map $ dnaT . toLower
dna2rna        = map $ rnaT . toLower

main = putStrLn $ dna2rna . dna_complement $ "tc"