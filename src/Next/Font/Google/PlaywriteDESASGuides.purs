module Next.Font.Google.PlaywriteDESASGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteDESASGuidesImpl :: forall r. { | r } -> FontConfig

playwriteDESASGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteDESASGuides = playwriteDESASGuidesImpl
