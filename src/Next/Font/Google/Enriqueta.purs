module Next.Font.Google.Enriqueta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import enriquetaImpl :: forall r. { | r } -> FontConfig

enriqueta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
enriqueta = enriquetaImpl
