module Next.Font.Google.Baloo2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import baloo2Impl :: forall r. { | r } -> FontConfig

baloo2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
baloo2 = baloo2Impl
