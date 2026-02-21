module Next.Font.Google.ZCOOLXiaoWei where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zCOOLXiaoWeiImpl :: forall r. { | r } -> FontConfig

zCOOLXiaoWei :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zCOOLXiaoWei = zCOOLXiaoWeiImpl
