module Next.Font.Google.BalooChettan2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooChettan2Impl :: forall r. { | r } -> FontConfig

balooChettan2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooChettan2 = balooChettan2Impl
