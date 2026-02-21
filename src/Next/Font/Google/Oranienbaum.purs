module Next.Font.Google.Oranienbaum where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oranienbaumImpl :: forall r. { | r } -> FontConfig

oranienbaum :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oranienbaum = oranienbaumImpl
