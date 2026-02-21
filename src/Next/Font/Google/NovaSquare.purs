module Next.Font.Google.NovaSquare where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaSquareImpl :: forall r. { | r } -> FontConfig

novaSquare :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaSquare = novaSquareImpl
