module MyState where

import MyMonad (MyMonad, bind, myReturn)

newtype MyState state a = MyState { runState :: state -> (state, a) }


getState :: MyState state state
getState Mystate var1 var2 = undefined

putState :: a -> MyState a ()
putstate a = undefined

modify :: (state -> state) -> MyState state ()
modify f = undefined

instance MyMonad MyState where
    bind :: MyMonad a -> (a -> MyMonad b) -> MyMonad b
    bind a f = getstate . f a

    myReturn a = MyState a ()

