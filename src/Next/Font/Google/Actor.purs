module Next.Font.Google.Actor where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import actorImpl :: forall r. { | r } -> FontConfig

actor :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
actor = actorImpl
