module Next.Font.Google.FingerPaint where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fingerPaintImpl :: forall r. { | r } -> FontConfig

fingerPaint :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fingerPaint = fingerPaintImpl
