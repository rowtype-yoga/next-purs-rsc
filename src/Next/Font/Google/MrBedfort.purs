module Next.Font.Google.MrBedfort where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mrBedfortImpl :: forall r. { | r } -> FontConfig

mrBedfort :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mrBedfort = mrBedfortImpl
