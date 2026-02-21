module Next.Font.Google.RussoOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import russoOneImpl :: forall r. { | r } -> FontConfig

russoOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
russoOne = russoOneImpl
