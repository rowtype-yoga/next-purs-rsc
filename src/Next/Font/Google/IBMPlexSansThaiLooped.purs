module Next.Font.Google.IBMPlexSansThaiLooped where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import iBMPlexSansThaiLoopedImpl :: forall r. { | r } -> FontConfig

iBMPlexSansThaiLooped :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
iBMPlexSansThaiLooped = iBMPlexSansThaiLoopedImpl
