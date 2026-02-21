module Next.Font.Google.LondrinaSketch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import londrinaSketchImpl :: forall r. { | r } -> FontConfig

londrinaSketch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
londrinaSketch = londrinaSketchImpl
