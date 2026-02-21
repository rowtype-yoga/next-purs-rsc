module Next.Font.Google.Mada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import madaImpl :: forall r. { | r } -> FontConfig

mada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mada = madaImpl
