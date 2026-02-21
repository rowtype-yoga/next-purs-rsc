module Next.Font.Google.Manuale where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import manualeImpl :: forall r. { | r } -> FontConfig

manuale :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
manuale = manualeImpl
