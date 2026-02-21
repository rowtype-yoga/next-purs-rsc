module Next.Font.Google.Micro5 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import micro5Impl :: forall r. { | r } -> FontConfig

micro5 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
micro5 = micro5Impl
