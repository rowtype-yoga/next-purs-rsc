module Next.Font.Google.BeVietnamPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import beVietnamProImpl :: forall r. { | r } -> FontConfig

beVietnamPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
beVietnamPro = beVietnamProImpl
