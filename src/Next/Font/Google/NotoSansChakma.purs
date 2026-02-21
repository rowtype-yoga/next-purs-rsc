module Next.Font.Google.NotoSansChakma where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansChakmaImpl :: forall r. { | r } -> FontConfig

notoSansChakma :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansChakma = notoSansChakmaImpl
