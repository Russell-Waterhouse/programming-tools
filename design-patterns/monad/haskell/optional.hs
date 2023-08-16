module Optional where

import MyMonad (MyMonad, bind, myReturn)

data Optional a = Empty | Full a 

isEmpty :: Optional -> Bool
isEmpty Empty = True
isEmpty _ = False


instance MyMonad Optional where
    bind Empty _ = Empty
    bind (Full a) f = f a

    myReturn = Full

