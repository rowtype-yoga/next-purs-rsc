module Next.Font.Google.ArchivoBlack where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import archivoBlackImpl :: forall r. { | r } -> FontConfig

archivoBlack :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
archivoBlack = archivoBlackImpl
