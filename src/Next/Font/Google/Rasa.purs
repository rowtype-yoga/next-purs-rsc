module Next.Font.Google.Rasa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rasaImpl :: forall r. { | r } -> FontConfig

rasa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rasa = rasaImpl
