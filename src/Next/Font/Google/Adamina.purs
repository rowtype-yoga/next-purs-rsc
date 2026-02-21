module Next.Font.Google.Adamina where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import adaminaImpl :: forall r. { | r } -> FontConfig

adamina :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
adamina = adaminaImpl
