module Next.Font.Google.Norican where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import noricanImpl :: forall r. { | r } -> FontConfig

norican :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
norican = noricanImpl
