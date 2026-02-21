module Next.Font.Google.BalooBhaina2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooBhaina2Impl :: forall r. { | r } -> FontConfig

balooBhaina2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooBhaina2 = balooBhaina2Impl
