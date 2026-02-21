module Next.Font.Google.SendFlowers where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sendFlowersImpl :: forall r. { | r } -> FontConfig

sendFlowers :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sendFlowers = sendFlowersImpl
