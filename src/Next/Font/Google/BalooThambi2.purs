module Next.Font.Google.BalooThambi2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooThambi2Impl :: forall r. { | r } -> FontConfig

balooThambi2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooThambi2 = balooThambi2Impl
