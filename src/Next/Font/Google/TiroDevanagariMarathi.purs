module Next.Font.Google.TiroDevanagariMarathi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiroDevanagariMarathiImpl :: forall r. { | r } -> FontConfig

tiroDevanagariMarathi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiroDevanagariMarathi = tiroDevanagariMarathiImpl
