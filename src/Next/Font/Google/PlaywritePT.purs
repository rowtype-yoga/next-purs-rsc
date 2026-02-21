module Next.Font.Google.PlaywritePT where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwritePTImpl :: forall r. { | r } -> FontConfig

playwritePT :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwritePT = playwritePTImpl
