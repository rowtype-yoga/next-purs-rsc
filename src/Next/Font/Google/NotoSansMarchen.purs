module Next.Font.Google.NotoSansMarchen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMarchenImpl :: forall r. { | r } -> FontConfig

notoSansMarchen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMarchen = notoSansMarchenImpl
