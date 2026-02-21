module Next.Font.Google.Finlandica where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import finlandicaImpl :: forall r. { | r } -> FontConfig

finlandica :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
finlandica = finlandicaImpl
