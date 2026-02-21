module Next.Font.Google.Galada where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import galadaImpl :: forall r. { | r } -> FontConfig

galada :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
galada = galadaImpl
