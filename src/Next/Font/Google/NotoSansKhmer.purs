module Next.Font.Google.NotoSansKhmer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSansKhmerImpl :: forall r. { | r } -> FontConfig

notoSansKhmer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSansKhmer = notoSansKhmerImpl
