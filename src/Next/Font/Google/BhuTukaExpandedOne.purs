module Next.Font.Google.BhuTukaExpandedOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bhuTukaExpandedOneImpl :: forall r. { | r } -> FontConfig

bhuTukaExpandedOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bhuTukaExpandedOne = bhuTukaExpandedOneImpl
