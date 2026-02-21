module Next.Font.Google.BilboSwashCaps where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bilboSwashCapsImpl :: forall r. { | r } -> FontConfig

bilboSwashCaps :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bilboSwashCaps = bilboSwashCapsImpl
