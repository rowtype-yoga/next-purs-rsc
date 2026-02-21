module Next.Font.Google.RubikWetPaint where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikWetPaintImpl :: forall r. { | r } -> FontConfig

rubikWetPaint :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikWetPaint = rubikWetPaintImpl
