module Next.Font.Google.Charmonman where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import charmonmanImpl :: forall r. { | r } -> FontConfig

charmonman :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
charmonman = charmonmanImpl
