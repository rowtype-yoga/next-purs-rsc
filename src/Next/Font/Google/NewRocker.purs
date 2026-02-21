module Next.Font.Google.NewRocker where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import newRockerImpl :: forall r. { | r } -> FontConfig

newRocker :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
newRocker = newRockerImpl
