module Next.Font.Google.SortsMillGoudy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sortsMillGoudyImpl :: forall r. { | r } -> FontConfig

sortsMillGoudy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sortsMillGoudy = sortsMillGoudyImpl
