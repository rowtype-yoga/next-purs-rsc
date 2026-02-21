module Next.Font.Google.SourceSerif4 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sourceSerif4Impl :: forall r. { | r } -> FontConfig

sourceSerif4 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sourceSerif4 = sourceSerif4Impl
