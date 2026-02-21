module Next.Font.Google.CabinSketch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cabinSketchImpl :: forall r. { | r } -> FontConfig

cabinSketch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cabinSketch = cabinSketchImpl
