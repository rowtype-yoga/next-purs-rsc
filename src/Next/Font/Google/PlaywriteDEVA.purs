module Next.Font.Google.PlaywriteDEVA where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDEVAImpl :: forall r. { | r } -> FontConfig

playwriteDEVA :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDEVA = playwriteDEVAImpl
