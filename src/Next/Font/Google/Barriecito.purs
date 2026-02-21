module Next.Font.Google.Barriecito where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import barriecitoImpl :: forall r. { | r } -> FontConfig

barriecito :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
barriecito = barriecitoImpl
