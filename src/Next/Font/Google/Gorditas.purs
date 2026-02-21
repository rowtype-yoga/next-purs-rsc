module Next.Font.Google.Gorditas where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gorditasImpl :: forall r. { | r } -> FontConfig

gorditas :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gorditas = gorditasImpl
