module Next.Font.Google.MartelSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import martelSansImpl :: forall r. { | r } -> FontConfig

martelSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
martelSans = martelSansImpl
