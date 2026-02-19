module Next.Cache
  ( RevalidationType(..)
  , revalidatePath
  , revalidateTag
  ) where

import Prelude

import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, runEffectFn1, runEffectFn2)

--------------------------------------------------------------------------------
-- FFI
--------------------------------------------------------------------------------

foreign import _revalidatePathImpl :: EffectFn2 String String Unit
foreign import _revalidateTagImpl :: EffectFn1 String Unit

--------------------------------------------------------------------------------
-- revalidatePath
--------------------------------------------------------------------------------

data RevalidationType = Page | Layout

revalidatePath :: String -> RevalidationType -> Effect Unit
revalidatePath path typ = runEffectFn2 _revalidatePathImpl path (toStr typ)
  where
  toStr Page = "page"
  toStr Layout = "layout"

--------------------------------------------------------------------------------
-- revalidateTag
--------------------------------------------------------------------------------

revalidateTag :: String -> Effect Unit
revalidateTag = runEffectFn1 _revalidateTagImpl
