module Next.Font.Google.RockSalt where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rockSaltImpl :: forall r. { | r } -> FontConfig

rockSalt :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rockSalt = rockSaltImpl
