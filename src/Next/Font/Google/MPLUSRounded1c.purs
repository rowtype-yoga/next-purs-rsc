module Next.Font.Google.MPLUSRounded1c where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mPLUSRounded1cImpl :: forall r. { | r } -> FontConfig

mPLUSRounded1c :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mPLUSRounded1c = mPLUSRounded1cImpl
