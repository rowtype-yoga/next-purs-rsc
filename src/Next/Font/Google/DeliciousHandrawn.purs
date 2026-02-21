module Next.Font.Google.DeliciousHandrawn where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import deliciousHandrawnImpl :: forall r. { | r } -> FontConfig

deliciousHandrawn :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
deliciousHandrawn = deliciousHandrawnImpl
