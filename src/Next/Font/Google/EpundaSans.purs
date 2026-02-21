module Next.Font.Google.EpundaSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import epundaSansImpl :: forall r. { | r } -> FontConfig

epundaSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
epundaSans = epundaSansImpl
