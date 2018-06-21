{-# LANGUAGE OverloadedStrings #-}
module TypeFun where
import    Foo
import Bar
import qualified Baz as Bang
import Data.Typeable

data Person = Person {
  name :: String,
  address :: String
}

main :: IO ()
main = do
  doSomethingOnType 'c'
  doSomethingOnType (35 :: Integer)
  doSomethingOnType "a string"

doSomethingOnType :: Typeable a => a -> IO ()
doSomethingOnType a = case show (typeOf a) of
  "Char"    -> print $ performActionOnChar a
  "Integer" -> print $ performActionOnInt a
  _         -> print "undefined!"

performActionOnChar :: Typeable a => a -> String
performActionOnChar a = case cast a :: Maybe Char of
  Just c  -> "Concatenating with string: " ++ [c]
  Nothing -> "Cast went wrong..."

performActionOnInt :: Typeable a => a -> String
performActionOnInt a = case cast a :: Maybe Integer of
  Just i  -> "Concatenating with string: " ++ show (i + 10)
  Nothing -> "Cast went wrong..."
