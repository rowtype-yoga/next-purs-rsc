module Next.Font.Google.HinaMincho where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hinaMinchoImpl :: forall r. { | r } -> FontConfig

hinaMincho :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hinaMincho = hinaMinchoImpl
