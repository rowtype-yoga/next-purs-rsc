module Next.Font.Google.MuktaVaani where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import muktaVaaniImpl :: forall r. { | r } -> FontConfig

muktaVaani :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
muktaVaani = muktaVaaniImpl
