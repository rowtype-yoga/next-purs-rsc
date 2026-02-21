module Next.Font.Google.DeliusSwashCaps where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import deliusSwashCapsImpl :: forall r. { | r } -> FontConfig

deliusSwashCaps :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
deliusSwashCaps = deliusSwashCapsImpl
