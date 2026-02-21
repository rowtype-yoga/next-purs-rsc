module Next.Font.Google.FugazOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fugazOneImpl :: forall r. { | r } -> FontConfig

fugazOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fugazOne = fugazOneImpl
