module Next.Font.Google.PlaywriteBEVLG where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteBEVLGImpl :: forall r. { | r } -> FontConfig

playwriteBEVLG :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteBEVLG = playwriteBEVLGImpl
