module Next.Font.Google.MPLUS1Code where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mPLUS1CodeImpl :: forall r. { | r } -> FontConfig

mPLUS1Code :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mPLUS1Code = mPLUS1CodeImpl
