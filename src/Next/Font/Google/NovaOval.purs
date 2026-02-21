module Next.Font.Google.NovaOval where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import novaOvalImpl :: forall r. { | r } -> FontConfig

novaOval :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
novaOval = novaOvalImpl
