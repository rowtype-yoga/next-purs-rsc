module Next.Font.Google.NotoSansTagbanwa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansTagbanwaImpl :: forall r. { | r } -> FontConfig

notoSansTagbanwa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansTagbanwa = notoSansTagbanwaImpl
