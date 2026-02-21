module Next.Font.Google.FunnelSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import funnelSansImpl :: forall r. { | r } -> FontConfig

funnelSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
funnelSans = funnelSansImpl
