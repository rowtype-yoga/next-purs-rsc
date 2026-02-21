module Next.Font.Google.Tiny5 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tiny5Impl :: forall r. { | r } -> FontConfig

tiny5 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tiny5 = tiny5Impl
