module Next.Font.Google.RubikPuddles where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rubikPuddlesImpl :: forall r. { | r } -> FontConfig

rubikPuddles :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rubikPuddles = rubikPuddlesImpl
