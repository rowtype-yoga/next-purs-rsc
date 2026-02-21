module Next.Font.Google.PlaywriteRO where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteROImpl :: forall r. { | r } -> FontConfig

playwriteRO :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteRO = playwriteROImpl
