module Next.Font.Google.AROneSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aROneSansImpl :: forall r. { | r } -> FontConfig

aROneSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aROneSans = aROneSansImpl
