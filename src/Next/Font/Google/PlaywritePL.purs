module Next.Font.Google.PlaywritePL where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwritePLImpl :: forall r. { | r } -> FontConfig

playwritePL :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwritePL = playwritePLImpl
