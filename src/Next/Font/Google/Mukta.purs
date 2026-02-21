module Next.Font.Google.Mukta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import muktaImpl :: forall r. { | r } -> FontConfig

mukta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mukta = muktaImpl
