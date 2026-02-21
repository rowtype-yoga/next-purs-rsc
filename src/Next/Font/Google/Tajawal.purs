module Next.Font.Google.Tajawal where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tajawalImpl :: forall r. { | r } -> FontConfig

tajawal :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tajawal = tajawalImpl
