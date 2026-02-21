module Next.Font.Google.ZenKurenaido where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenKurenaidoImpl :: forall r. { | r } -> FontConfig

zenKurenaido :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenKurenaido = zenKurenaidoImpl
