module Next.Font.Google.Englebert where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import englebertImpl :: forall r. { | r } -> FontConfig

englebert :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
englebert = englebertImpl
