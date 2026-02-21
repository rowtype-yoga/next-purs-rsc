module Next.Font.Google.HachiMaruPop where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hachiMaruPopImpl :: forall r. { | r } -> FontConfig

hachiMaruPop :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hachiMaruPop = hachiMaruPopImpl
