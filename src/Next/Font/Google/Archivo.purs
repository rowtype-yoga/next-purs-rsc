module Next.Font.Google.Archivo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import archivoImpl :: forall r. { | r } -> FontConfig

archivo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
archivo = archivoImpl
