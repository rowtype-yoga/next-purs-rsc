module Next.Font.Google.RubikBurned where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikBurnedImpl :: forall r. { | r } -> FontConfig

rubikBurned :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikBurned = rubikBurnedImpl
