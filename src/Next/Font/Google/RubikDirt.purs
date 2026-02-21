module Next.Font.Google.RubikDirt where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikDirtImpl :: forall r. { | r } -> FontConfig

rubikDirt :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikDirt = rubikDirtImpl
