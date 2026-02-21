module Next.Font.Google.NotoSerifMyanmar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifMyanmarImpl :: forall r. { | r } -> FontConfig

notoSerifMyanmar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifMyanmar = notoSerifMyanmarImpl
