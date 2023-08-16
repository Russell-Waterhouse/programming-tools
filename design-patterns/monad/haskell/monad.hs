module MyMonad where 

class MyMonad  m where
    bind :: m a -> (a -> m b) -> m b
    myReturn :: a -> m a


