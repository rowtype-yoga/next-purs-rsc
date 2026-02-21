module Next.Font.Google.EBGaramond where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eBGaramondImpl :: forall r. { | r } -> FontConfig

eBGaramond :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eBGaramond = eBGaramondImpl
