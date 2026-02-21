module Next.Font.Google.Oxanium where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oxaniumImpl :: forall r. { | r } -> FontConfig

oxanium :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oxanium = oxaniumImpl
