module Next.Font.Google.WDXLLubrifontSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wDXLLubrifontSCImpl :: forall r. { | r } -> FontConfig

wDXLLubrifontSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wDXLLubrifontSC = wDXLLubrifontSCImpl
