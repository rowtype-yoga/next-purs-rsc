module Next.Font.Google.Offside where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import offsideImpl :: forall r. { | r } -> FontConfig

offside :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
offside = offsideImpl
