module Next.Font.Google.Amita where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amitaImpl :: forall r. { | r } -> FontConfig

amita :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amita = amitaImpl
