module Next.Font.Google.PlaywriteAT where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteATImpl :: forall r. { | r } -> FontConfig

playwriteAT :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAT = playwriteATImpl
