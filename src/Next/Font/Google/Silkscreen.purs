module Next.Font.Google.Silkscreen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import silkscreenImpl :: forall r. { | r } -> FontConfig

silkscreen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
silkscreen = silkscreenImpl
