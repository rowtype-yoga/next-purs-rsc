module Next.Font.Google.PlaywriteES where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteESImpl :: forall r. { | r } -> FontConfig

playwriteES :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteES = playwriteESImpl
