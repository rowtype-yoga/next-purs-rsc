module Next.Font.Google.CoralPixels where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import coralPixelsImpl :: forall r. { | r } -> FontConfig

coralPixels :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
coralPixels = coralPixelsImpl
