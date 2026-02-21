module Next.Font.Google.Gugi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gugiImpl :: forall r. { | r } -> FontConfig

gugi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gugi = gugiImpl
