module Next.Font.Google.Bitcount where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountImpl :: forall r. { | r } -> FontConfig

bitcount :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcount = bitcountImpl
