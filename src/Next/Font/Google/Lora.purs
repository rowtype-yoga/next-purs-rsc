module Next.Font.Google.Lora where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import loraImpl :: forall r. { | r } -> FontConfig

lora :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lora = loraImpl
