module Next.Font.Google.FunnelDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import funnelDisplayImpl :: forall r. { | r } -> FontConfig

funnelDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
funnelDisplay = funnelDisplayImpl
