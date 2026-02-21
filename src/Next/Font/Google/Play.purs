module Next.Font.Google.Play where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playImpl :: forall r. { | r } -> FontConfig

play :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
play = playImpl
