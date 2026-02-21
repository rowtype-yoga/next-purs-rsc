module Next.Font.Google.Yesteryear where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yesteryearImpl :: forall r. { | r } -> FontConfig

yesteryear :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yesteryear = yesteryearImpl
