module Next.Font.Google.Fascinate where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fascinateImpl :: forall r. { | r } -> FontConfig

fascinate :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fascinate = fascinateImpl
