module Kata where

data Person = Person { greeting :: String }

greet :: Person -> String
greet = greeting
