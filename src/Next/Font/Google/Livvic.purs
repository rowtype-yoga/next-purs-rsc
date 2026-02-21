module Next.Font.Google.Livvic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import livvicImpl :: forall r. { | r } -> FontConfig

livvic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
livvic = livvicImpl
