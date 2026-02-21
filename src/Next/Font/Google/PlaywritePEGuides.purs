module Next.Font.Google.PlaywritePEGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwritePEGuidesImpl :: forall r. { | r } -> FontConfig

playwritePEGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwritePEGuides = playwritePEGuidesImpl
