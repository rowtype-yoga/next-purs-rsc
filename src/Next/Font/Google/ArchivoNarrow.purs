module Next.Font.Google.ArchivoNarrow where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import archivoNarrowImpl :: forall r. { | r } -> FontConfig

archivoNarrow :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
archivoNarrow = archivoNarrowImpl
