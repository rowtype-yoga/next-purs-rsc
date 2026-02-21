module Next.Font.Google.NotoSansKharoshthi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKharoshthiImpl :: forall r. { | r } -> FontConfig

notoSansKharoshthi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKharoshthi = notoSansKharoshthiImpl
