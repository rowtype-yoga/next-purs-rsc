module Next.Font.Google.SplineSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import splineSansImpl :: forall r. { | r } -> FontConfig

splineSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
splineSans = splineSansImpl
