module Next.Font.Google.ZCOOLKuaiLe where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zCOOLKuaiLeImpl :: forall r. { | r } -> FontConfig

zCOOLKuaiLe :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zCOOLKuaiLe = zCOOLKuaiLeImpl
