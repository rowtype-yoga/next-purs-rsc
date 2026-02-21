module Next.Font.Google.BraahOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import braahOneImpl :: forall r. { | r } -> FontConfig

braahOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
braahOne = braahOneImpl
