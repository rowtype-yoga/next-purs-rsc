module Next.Font.Google.RubikSprayPaint where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikSprayPaintImpl :: forall r. { | r } -> FontConfig

rubikSprayPaint :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikSprayPaint = rubikSprayPaintImpl
