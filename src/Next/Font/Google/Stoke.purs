module Next.Font.Google.Stoke where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import stokeImpl :: forall r. { | r } -> FontConfig

stoke :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
stoke = stokeImpl
