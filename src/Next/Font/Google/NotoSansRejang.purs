module Next.Font.Google.NotoSansRejang where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansRejangImpl :: forall r. { | r } -> FontConfig

notoSansRejang :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansRejang = notoSansRejangImpl
