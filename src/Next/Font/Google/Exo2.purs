module Next.Font.Google.Exo2 where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import exo2Impl :: forall r. { | r } -> FontConfig

exo2 :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
exo2 = exo2Impl
