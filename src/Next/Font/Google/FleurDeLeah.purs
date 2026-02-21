module Next.Font.Google.FleurDeLeah where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fleurDeLeahImpl :: forall r. { | r } -> FontConfig

fleurDeLeah :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fleurDeLeah = fleurDeLeahImpl
