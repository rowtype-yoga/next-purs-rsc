module Next.Font.Google.RopaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ropaSansImpl :: forall r. { | r } -> FontConfig

ropaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ropaSans = ropaSansImpl
