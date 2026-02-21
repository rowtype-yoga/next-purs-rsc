module Next.Font.Google.Marvel where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import marvelImpl :: forall r. { | r } -> FontConfig

marvel :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
marvel = marvelImpl
