module Next.Font.Google.Tillana where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tillanaImpl :: forall r. { | r } -> FontConfig

tillana :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tillana = tillanaImpl
