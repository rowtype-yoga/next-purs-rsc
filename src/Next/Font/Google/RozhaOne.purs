module Next.Font.Google.RozhaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rozhaOneImpl :: forall r. { | r } -> FontConfig

rozhaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rozhaOne = rozhaOneImpl
