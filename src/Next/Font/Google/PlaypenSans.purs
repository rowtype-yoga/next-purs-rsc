module Next.Font.Google.PlaypenSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playpenSansImpl :: forall r. { | r } -> FontConfig

playpenSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playpenSans = playpenSansImpl
