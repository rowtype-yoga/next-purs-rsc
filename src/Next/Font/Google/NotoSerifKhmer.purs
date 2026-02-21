module Next.Font.Google.NotoSerifKhmer where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifKhmerImpl :: forall r. { | r } -> FontConfig

notoSerifKhmer :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifKhmer = notoSerifKhmerImpl
