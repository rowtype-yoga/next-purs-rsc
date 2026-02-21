module Next.Font.Google.SuezOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import suezOneImpl :: forall r. { | r } -> FontConfig

suezOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
suezOne = suezOneImpl
