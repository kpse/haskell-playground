module ReaderTest where

import Control.Applicative

boop = (*2)
doop = (+10)

bloop :: Integer -> Integer
bloop = fmap boop doop

bbop :: Integer -> Integer
bbop = (+) <$> boop <*> doop

duwop :: Integer -> Integer
duwop = liftA2 (+) boop doop
