module Next.Font.Google.Alata where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alataImpl :: forall r. { | r } -> FontConfig

alata :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alata = alataImpl
