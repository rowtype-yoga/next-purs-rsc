module Next.Font.Google.BalooTammudu2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooTammudu2Impl :: forall r. { | r } -> FontConfig

balooTammudu2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooTammudu2 = balooTammudu2Impl
