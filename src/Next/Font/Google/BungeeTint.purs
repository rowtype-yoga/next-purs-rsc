module Next.Font.Google.BungeeTint where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bungeeTintImpl :: forall r. { | r } -> FontConfig

bungeeTint :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bungeeTint = bungeeTintImpl
