module Next.Font.Google.Lekton where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lektonImpl :: forall r. { | r } -> FontConfig

lekton :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lekton = lektonImpl
