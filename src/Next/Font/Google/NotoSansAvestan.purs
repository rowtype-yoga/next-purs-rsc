module Next.Font.Google.NotoSansAvestan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansAvestanImpl :: forall r. { | r } -> FontConfig

notoSansAvestan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansAvestan = notoSansAvestanImpl
