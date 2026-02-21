module Next.Font.Google.MPLUSCodeLatin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mPLUSCodeLatinImpl :: forall r. { | r } -> FontConfig

mPLUSCodeLatin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mPLUSCodeLatin = mPLUSCodeLatinImpl
