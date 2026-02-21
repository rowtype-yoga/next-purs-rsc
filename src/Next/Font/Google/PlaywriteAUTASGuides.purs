module Next.Font.Google.PlaywriteAUTASGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteAUTASGuidesImpl :: forall r. { | r } -> FontConfig

playwriteAUTASGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteAUTASGuides = playwriteAUTASGuidesImpl
