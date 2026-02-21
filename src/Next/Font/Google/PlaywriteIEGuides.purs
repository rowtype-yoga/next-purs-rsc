module Next.Font.Google.PlaywriteIEGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteIEGuidesImpl :: forall r. { | r } -> FontConfig

playwriteIEGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteIEGuides = playwriteIEGuidesImpl
