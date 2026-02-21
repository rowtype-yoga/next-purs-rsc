module Next.Font.Google.BubblerOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bubblerOneImpl :: forall r. { | r } -> FontConfig

bubblerOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bubblerOne = bubblerOneImpl
