module Next.Font.Google.Gurajada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gurajadaImpl :: forall r. { | r } -> FontConfig

gurajada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gurajada = gurajadaImpl
