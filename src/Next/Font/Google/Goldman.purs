module Next.Font.Google.Goldman where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import goldmanImpl :: forall r. { | r } -> FontConfig

goldman :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
goldman = goldmanImpl
