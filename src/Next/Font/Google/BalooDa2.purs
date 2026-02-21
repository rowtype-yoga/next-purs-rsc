module Next.Font.Google.BalooDa2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooDa2Impl :: forall r. { | r } -> FontConfig

balooDa2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooDa2 = balooDa2Impl
