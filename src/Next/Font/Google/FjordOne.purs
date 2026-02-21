module Next.Font.Google.FjordOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fjordOneImpl :: forall r. { | r } -> FontConfig

fjordOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fjordOne = fjordOneImpl
