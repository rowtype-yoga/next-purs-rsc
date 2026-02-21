module Next.Font.Google.RubikDistressed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikDistressedImpl :: forall r. { | r } -> FontConfig

rubikDistressed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikDistressed = rubikDistressedImpl
