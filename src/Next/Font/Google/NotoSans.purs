module Next.Font.Google.NotoSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansImpl :: forall r. { | r } -> FontConfig

notoSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSans = notoSansImpl
