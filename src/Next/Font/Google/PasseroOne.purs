module Next.Font.Google.PasseroOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import passeroOneImpl :: forall r. { | r } -> FontConfig

passeroOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
passeroOne = passeroOneImpl
