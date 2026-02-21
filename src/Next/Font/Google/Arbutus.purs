module Next.Font.Google.Arbutus where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arbutusImpl :: forall r. { | r } -> FontConfig

arbutus :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arbutus = arbutusImpl
