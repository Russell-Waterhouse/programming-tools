module Optional where

import MyMonad (MyMonad, bind, myReturn)

data Optional a = Empty | Full a 


instance MyMonad Optional where
    bind Empty _ = Empty
    bind (Full a) f = f a

    myReturn = Full

