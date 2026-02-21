module Next.Font.Google.Basic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import basicImpl :: forall r. { | r } -> FontConfig

basic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
basic = basicImpl
