module Next.Font.Google.Chicle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chicleImpl :: forall r. { | r } -> FontConfig

chicle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chicle = chicleImpl
