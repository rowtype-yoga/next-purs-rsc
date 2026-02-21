module Next.Font.Google.PlaypenSansThai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playpenSansThaiImpl :: forall r. { | r } -> FontConfig

playpenSansThai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playpenSansThai = playpenSansThaiImpl
