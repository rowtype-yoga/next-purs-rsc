module Next.Font.Google.PlaywriteDEGrundGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDEGrundGuidesImpl :: forall r. { | r } -> FontConfig

playwriteDEGrundGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDEGrundGuides = playwriteDEGrundGuidesImpl
