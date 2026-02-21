module Next.Font.Google.Onest where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import onestImpl :: forall r. { | r } -> FontConfig

onest :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
onest = onestImpl
