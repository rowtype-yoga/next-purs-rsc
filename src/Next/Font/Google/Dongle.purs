module Next.Font.Google.Dongle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dongleImpl :: forall r. { | r } -> FontConfig

dongle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dongle = dongleImpl
