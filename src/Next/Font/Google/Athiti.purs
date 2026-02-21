module Next.Font.Google.Athiti where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import athitiImpl :: forall r. { | r } -> FontConfig

athiti :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
athiti = athitiImpl
