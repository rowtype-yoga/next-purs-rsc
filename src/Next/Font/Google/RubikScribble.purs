module Next.Font.Google.RubikScribble where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikScribbleImpl :: forall r. { | r } -> FontConfig

rubikScribble :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikScribble = rubikScribbleImpl
