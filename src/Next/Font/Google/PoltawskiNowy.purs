module Next.Font.Google.PoltawskiNowy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import poltawskiNowyImpl :: forall r. { | r } -> FontConfig

poltawskiNowy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
poltawskiNowy = poltawskiNowyImpl
