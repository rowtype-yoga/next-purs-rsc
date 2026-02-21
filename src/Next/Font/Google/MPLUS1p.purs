module Next.Font.Google.MPLUS1p where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mPLUS1pImpl :: forall r. { | r } -> FontConfig

mPLUS1p :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mPLUS1p = mPLUS1pImpl
