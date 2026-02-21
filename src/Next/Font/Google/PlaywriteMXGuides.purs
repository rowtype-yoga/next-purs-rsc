module Next.Font.Google.PlaywriteMXGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteMXGuidesImpl :: forall r. { | r } -> FontConfig

playwriteMXGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteMXGuides = playwriteMXGuidesImpl
