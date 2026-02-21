module Next.Font.Google.RubikMaps where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikMapsImpl :: forall r. { | r } -> FontConfig

rubikMaps :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikMaps = rubikMapsImpl
