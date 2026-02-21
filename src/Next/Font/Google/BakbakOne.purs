module Next.Font.Google.BakbakOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bakbakOneImpl :: forall r. { | r } -> FontConfig

bakbakOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bakbakOne = bakbakOneImpl
