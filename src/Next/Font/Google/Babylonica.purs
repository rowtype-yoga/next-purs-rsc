module Next.Font.Google.Babylonica where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import babylonicaImpl :: forall r. { | r } -> FontConfig

babylonica :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
babylonica = babylonicaImpl
