module Next.Font.Google.SplineSansMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import splineSansMonoImpl :: forall r. { | r } -> FontConfig

splineSansMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
splineSansMono = splineSansMonoImpl
