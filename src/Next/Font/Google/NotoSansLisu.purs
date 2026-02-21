module Next.Font.Google.NotoSansLisu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansLisuImpl :: forall r. { | r } -> FontConfig

notoSansLisu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansLisu = notoSansLisuImpl
