module Next.Font.Google.PlaypenSansDeva where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playpenSansDevaImpl :: forall r. { | r } -> FontConfig

playpenSansDeva :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playpenSansDeva = playpenSansDevaImpl
