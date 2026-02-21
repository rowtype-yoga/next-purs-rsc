module Next.Font.Google.NotoSansThaiLooped where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansThaiLoopedImpl :: forall r. { | r } -> FontConfig

notoSansThaiLooped :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansThaiLooped = notoSansThaiLoopedImpl
