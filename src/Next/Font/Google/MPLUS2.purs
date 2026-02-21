module Next.Font.Google.MPLUS2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mPLUS2Impl :: forall r. { | r } -> FontConfig

mPLUS2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mPLUS2 = mPLUS2Impl
