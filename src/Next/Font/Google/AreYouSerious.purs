module Next.Font.Google.AreYouSerious where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import areYouSeriousImpl :: forall r. { | r } -> FontConfig

areYouSerious :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
areYouSerious = areYouSeriousImpl
