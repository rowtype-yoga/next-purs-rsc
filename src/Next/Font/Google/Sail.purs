module Next.Font.Google.Sail where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sailImpl :: forall r. { | r } -> FontConfig

sail :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sail = sailImpl
