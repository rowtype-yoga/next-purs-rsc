module Next.Font.Google.Gulzar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gulzarImpl :: forall r. { | r } -> FontConfig

gulzar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gulzar = gulzarImpl
