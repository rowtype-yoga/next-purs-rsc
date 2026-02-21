module Next.Font.Google.Freehand where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import freehandImpl :: forall r. { | r } -> FontConfig

freehand :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
freehand = freehandImpl
