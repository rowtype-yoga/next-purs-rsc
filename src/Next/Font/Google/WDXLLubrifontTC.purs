module Next.Font.Google.WDXLLubrifontTC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wDXLLubrifontTCImpl :: forall r. { | r } -> FontConfig

wDXLLubrifontTC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wDXLLubrifontTC = wDXLLubrifontTCImpl
