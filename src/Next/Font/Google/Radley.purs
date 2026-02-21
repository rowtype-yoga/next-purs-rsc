module Next.Font.Google.Radley where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import radleyImpl :: forall r. { | r } -> FontConfig

radley :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
radley = radleyImpl
