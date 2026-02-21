module Next.Font.Google.Yomogi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yomogiImpl :: forall r. { | r } -> FontConfig

yomogi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yomogi = yomogiImpl
