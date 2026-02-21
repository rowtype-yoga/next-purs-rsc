module Next.Font.Google.BebasNeue where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bebasNeueImpl :: forall r. { | r } -> FontConfig

bebasNeue :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bebasNeue = bebasNeueImpl
