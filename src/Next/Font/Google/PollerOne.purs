module Next.Font.Google.PollerOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pollerOneImpl :: forall r. { | r } -> FontConfig

pollerOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pollerOne = pollerOneImpl
