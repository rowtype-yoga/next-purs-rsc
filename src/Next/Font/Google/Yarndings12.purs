module Next.Font.Google.Yarndings12 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yarndings12Impl :: forall r. { | r } -> FontConfig

yarndings12 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yarndings12 = yarndings12Impl
