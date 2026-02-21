module Next.Font.Google.Handjet where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import handjetImpl :: forall r. { | r } -> FontConfig

handjet :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
handjet = handjetImpl
