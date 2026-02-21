module Next.Font.Google.HammersmithOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hammersmithOneImpl :: forall r. { | r } -> FontConfig

hammersmithOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hammersmithOne = hammersmithOneImpl
