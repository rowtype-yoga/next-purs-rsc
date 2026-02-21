module Next.Cache
  ( RevalidationType(..)
  , revalidatePath
  , revalidateTag
  , cacheAff
  ) where

import Prelude

import Control.Promise (Promise)
import Control.Promise as Promise
import Data.Function.Uncurried (Fn1, runFn1)
import Effect (Effect)
import Effect.Aff (Aff)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import revalidatePathImpl :: EffectFn2 String String Unit
foreign import revalidateTagImpl :: EffectFn1 String Unit
foreign import cacheImpl :: forall a b. Fn1 (a -> Effect (Promise b)) (a -> Promise b)

--------------------------------------------------------------------------------
-- revalidatePath
--------------------------------------------------------------------------------

data RevalidationType = Page | Layout

revalidatePath :: String -> RevalidationType -> Effect Unit
revalidatePath path typ = runEffectFn2 revalidatePathImpl path (toStr typ)
  where
  toStr Page = "page"
  toStr Layout = "layout"

--------------------------------------------------------------------------------
-- revalidateTag
--------------------------------------------------------------------------------

revalidateTag :: String -> Effect Unit
revalidateTag = runEffectFn1 revalidateTagImpl

--------------------------------------------------------------------------------
-- React cache()
--------------------------------------------------------------------------------

cacheAff :: forall a b. (a -> Aff b) -> a -> Aff b
cacheAff f = do
  let cached = runFn1 cacheImpl \a -> Promise.fromAff (f a)
  \a -> Promise.toAff (cached a)
