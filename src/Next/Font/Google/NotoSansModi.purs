module Next.Font.Google.NotoSansModi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansModiImpl :: forall r. { | r } -> FontConfig

notoSansModi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansModi = notoSansModiImpl
