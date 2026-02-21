module Next.Font.Google.NotoSerifGujarati where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifGujaratiImpl :: forall r. { | r } -> FontConfig

notoSerifGujarati :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifGujarati = notoSerifGujaratiImpl
