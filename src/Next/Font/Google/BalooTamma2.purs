module Next.Font.Google.BalooTamma2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import balooTamma2Impl :: forall r. { | r } -> FontConfig

balooTamma2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
balooTamma2 = balooTamma2Impl
