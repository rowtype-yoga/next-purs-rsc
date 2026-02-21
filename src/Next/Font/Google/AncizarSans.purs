module Next.Font.Google.AncizarSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ancizarSansImpl :: forall r. { | r } -> FontConfig

ancizarSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ancizarSans = ancizarSansImpl
