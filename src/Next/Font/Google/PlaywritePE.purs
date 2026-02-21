module Next.Font.Google.PlaywritePE where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwritePEImpl :: forall r. { | r } -> FontConfig

playwritePE :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwritePE = playwritePEImpl
