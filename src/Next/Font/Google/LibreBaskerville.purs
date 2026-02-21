module Next.Font.Google.LibreBaskerville where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import libreBaskervilleImpl :: forall r. { | r } -> FontConfig

libreBaskerville :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
libreBaskerville = libreBaskervilleImpl
