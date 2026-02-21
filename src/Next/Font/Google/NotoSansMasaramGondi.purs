module Next.Font.Google.NotoSansMasaramGondi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMasaramGondiImpl :: forall r. { | r } -> FontConfig

notoSansMasaramGondi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMasaramGondi = notoSansMasaramGondiImpl
