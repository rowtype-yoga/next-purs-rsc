module Next.Font.Google.Jersey20 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jersey20Impl :: forall r. { | r } -> FontConfig

jersey20 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jersey20 = jersey20Impl
