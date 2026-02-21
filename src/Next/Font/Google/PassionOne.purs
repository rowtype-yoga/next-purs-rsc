module Next.Font.Google.PassionOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import passionOneImpl :: forall r. { | r } -> FontConfig

passionOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
passionOne = passionOneImpl
