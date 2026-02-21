module Next.Font.Google.ManufacturingConsent where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import manufacturingConsentImpl :: forall r. { | r } -> FontConfig

manufacturingConsent :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
manufacturingConsent = manufacturingConsentImpl
