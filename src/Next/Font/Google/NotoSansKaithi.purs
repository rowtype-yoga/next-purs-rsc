module Next.Font.Google.NotoSansKaithi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKaithiImpl :: forall r. { | r } -> FontConfig

notoSansKaithi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKaithi = notoSansKaithiImpl
