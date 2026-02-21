module Next.Font.Google.InclusiveSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import inclusiveSansImpl :: forall r. { | r } -> FontConfig

inclusiveSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inclusiveSans = inclusiveSansImpl
