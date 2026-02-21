module Next.Font.Google.PlaywriteDELA where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDELAImpl :: forall r. { | r } -> FontConfig

playwriteDELA :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDELA = playwriteDELAImpl
