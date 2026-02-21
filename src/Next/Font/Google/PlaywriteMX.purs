module Next.Font.Google.PlaywriteMX where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteMXImpl :: forall r. { | r } -> FontConfig

playwriteMX :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteMX = playwriteMXImpl
