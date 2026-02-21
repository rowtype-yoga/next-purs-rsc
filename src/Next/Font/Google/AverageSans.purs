module Next.Font.Google.AverageSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import averageSansImpl :: forall r. { | r } -> FontConfig

averageSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
averageSans = averageSansImpl
