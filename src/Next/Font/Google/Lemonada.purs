module Next.Font.Google.Lemonada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lemonadaImpl :: forall r. { | r } -> FontConfig

lemonada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lemonada = lemonadaImpl
