module Next.Font.Google.MuktaMalar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import muktaMalarImpl :: forall r. { | r } -> FontConfig

muktaMalar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
muktaMalar = muktaMalarImpl
