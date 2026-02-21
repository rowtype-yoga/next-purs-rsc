module Next.Font.Google.PadyakkeExpandedOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import padyakkeExpandedOneImpl :: forall r. { | r } -> FontConfig

padyakkeExpandedOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
padyakkeExpandedOne = padyakkeExpandedOneImpl
