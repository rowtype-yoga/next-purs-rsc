module Next.Font.Google.MPLUS1 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mPLUS1Impl :: forall r. { | r } -> FontConfig

mPLUS1 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mPLUS1 = mPLUS1Impl
