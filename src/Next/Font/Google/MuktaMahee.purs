module Next.Font.Google.MuktaMahee where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import muktaMaheeImpl :: forall r. { | r } -> FontConfig

muktaMahee :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
muktaMahee = muktaMaheeImpl
