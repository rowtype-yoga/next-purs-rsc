module Next.Font.Google.PlayfairDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playfairDisplayImpl :: forall r. { | r } -> FontConfig

playfairDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playfairDisplay = playfairDisplayImpl
