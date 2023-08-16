module Optional where

import MyMonad (MyMonad, bind, myReturn)

data Optional a = Empty | Full a deriving (Show)

isEmpty :: Optional a -> Bool
isEmpty Empty = True
isEmpty (Full a) = False

safeExtractOptional :: Optional a -> a -> a
safeExtractOptional Empty fallback = fallback
safeExtractOptional (Full val) fallback = fallback


instance MyMonad Optional where
    bind Empty _ = Empty
    bind (Full a) f = f a

    myReturn = Full

