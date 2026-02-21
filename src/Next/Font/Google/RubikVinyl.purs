module Next.Font.Google.RubikVinyl where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikVinylImpl :: forall r. { | r } -> FontConfig

rubikVinyl :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikVinyl = rubikVinylImpl
