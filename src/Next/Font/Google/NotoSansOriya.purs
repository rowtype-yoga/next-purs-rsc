module Next.Font.Google.NotoSansOriya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansOriyaImpl :: forall r. { | r } -> FontConfig

notoSansOriya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansOriya = notoSansOriyaImpl
