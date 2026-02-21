module Next.Font.Google.Playball where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playballImpl :: forall r. { | r } -> FontConfig

playball :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playball = playballImpl
