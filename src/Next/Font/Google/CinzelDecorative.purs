module Next.Font.Google.CinzelDecorative where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cinzelDecorativeImpl :: forall r. { | r } -> FontConfig

cinzelDecorative :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cinzelDecorative = cinzelDecorativeImpl
