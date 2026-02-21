module Next.Font.Google.Volkhov where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import volkhovImpl :: forall r. { | r } -> FontConfig

volkhov :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
volkhov = volkhovImpl
