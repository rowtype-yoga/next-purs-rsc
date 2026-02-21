module Next.Font.Google.ZCOOLQingKeHuangYou where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zCOOLQingKeHuangYouImpl :: forall r. { | r } -> FontConfig

zCOOLQingKeHuangYou :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zCOOLQingKeHuangYou = zCOOLQingKeHuangYouImpl
