module Next.Font.Google.PlaywriteDEGrund where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDEGrundImpl :: forall r. { | r } -> FontConfig

playwriteDEGrund :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDEGrund = playwriteDEGrundImpl
