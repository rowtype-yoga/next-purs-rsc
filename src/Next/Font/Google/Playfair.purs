module Next.Font.Google.Playfair where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playfairImpl :: forall r. { | r } -> FontConfig

playfair :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playfair = playfairImpl
