module Next.Font.Google.Yarndings20 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yarndings20Impl :: forall r. { | r } -> FontConfig

yarndings20 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yarndings20 = yarndings20Impl
