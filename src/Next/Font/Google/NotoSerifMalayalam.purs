module Next.Font.Google.NotoSerifMalayalam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifMalayalamImpl :: forall r. { | r } -> FontConfig

notoSerifMalayalam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifMalayalam = notoSerifMalayalamImpl
