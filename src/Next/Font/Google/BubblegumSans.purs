module Next.Font.Google.BubblegumSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bubblegumSansImpl :: forall r. { | r } -> FontConfig

bubblegumSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bubblegumSans = bubblegumSansImpl
