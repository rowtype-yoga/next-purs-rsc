module Next.Font.Google.BalooPaaji2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooPaaji2Impl :: forall r. { | r } -> FontConfig

balooPaaji2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooPaaji2 = balooPaaji2Impl
