module Next.Font.Google.Texturina where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import texturinaImpl :: forall r. { | r } -> FontConfig

texturina :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
texturina = texturinaImpl
