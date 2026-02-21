module Next.Font.Google.MontserratAlternates where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import montserratAlternatesImpl :: forall r. { | r } -> FontConfig

montserratAlternates :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
montserratAlternates = montserratAlternatesImpl
