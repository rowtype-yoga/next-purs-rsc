module Next.Font.Google.NotoSerifGurmukhi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifGurmukhiImpl :: forall r. { | r } -> FontConfig

notoSerifGurmukhi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifGurmukhi = notoSerifGurmukhiImpl
