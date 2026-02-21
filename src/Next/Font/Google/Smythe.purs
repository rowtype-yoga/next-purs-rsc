module Next.Font.Google.Smythe where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import smytheImpl :: forall r. { | r } -> FontConfig

smythe :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
smythe = smytheImpl
