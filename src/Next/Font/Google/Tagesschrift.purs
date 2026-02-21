module Next.Font.Google.Tagesschrift where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tagesschriftImpl :: forall r. { | r } -> FontConfig

tagesschrift :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tagesschrift = tagesschriftImpl
