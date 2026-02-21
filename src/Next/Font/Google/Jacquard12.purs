module Next.Font.Google.Jacquard12 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jacquard12Impl :: forall r. { | r } -> FontConfig

jacquard12 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jacquard12 = jacquard12Impl
