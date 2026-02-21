module Next.Font.Google.OdibeeSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import odibeeSansImpl :: forall r. { | r } -> FontConfig

odibeeSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
odibeeSans = odibeeSansImpl
