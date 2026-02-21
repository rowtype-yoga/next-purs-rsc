module Next.Font.Google.RubikMarkerHatch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikMarkerHatchImpl :: forall r. { | r } -> FontConfig

rubikMarkerHatch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikMarkerHatch = rubikMarkerHatchImpl
