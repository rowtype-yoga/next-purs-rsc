module Next.Font.Google.PlaywriteAR where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteARImpl :: forall r. { | r } -> FontConfig

playwriteAR :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAR = playwriteARImpl
