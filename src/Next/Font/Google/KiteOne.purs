module Next.Font.Google.KiteOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kiteOneImpl :: forall r. { | r } -> FontConfig

kiteOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kiteOne = kiteOneImpl
