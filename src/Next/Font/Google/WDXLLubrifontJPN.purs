module Next.Font.Google.WDXLLubrifontJPN where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wDXLLubrifontJPNImpl :: forall r. { | r } -> FontConfig

wDXLLubrifontJPN :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wDXLLubrifontJPN = wDXLLubrifontJPNImpl
