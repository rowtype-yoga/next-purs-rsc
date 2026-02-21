module Next.Font.Google.BalooBhaijaan2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooBhaijaan2Impl :: forall r. { | r } -> FontConfig

balooBhaijaan2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooBhaijaan2 = balooBhaijaan2Impl
