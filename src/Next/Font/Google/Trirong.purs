module Next.Font.Google.Trirong where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import trirongImpl :: forall r. { | r } -> FontConfig

trirong :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
trirong = trirongImpl
