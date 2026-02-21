module Next.Font.Google.BalooBhai2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooBhai2Impl :: forall r. { | r } -> FontConfig

balooBhai2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooBhai2 = balooBhai2Impl
