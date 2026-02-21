module Next.Font.Google.TacOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tacOneImpl :: forall r. { | r } -> FontConfig

tacOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
tacOne = tacOneImpl
