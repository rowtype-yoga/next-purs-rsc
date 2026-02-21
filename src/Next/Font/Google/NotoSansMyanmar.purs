module Next.Font.Google.NotoSansMyanmar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansMyanmarImpl :: forall r. { | r } -> FontConfig

notoSansMyanmar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansMyanmar = notoSansMyanmarImpl
