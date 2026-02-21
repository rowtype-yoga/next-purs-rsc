module Next.Font.Google.GamjaFlower where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gamjaFlowerImpl :: forall r. { | r } -> FontConfig

gamjaFlower :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gamjaFlower = gamjaFlowerImpl
