module Next.Font.Google.NotoSansThai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansThaiImpl :: forall r. { | r } -> FontConfig

notoSansThai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansThai = notoSansThaiImpl
