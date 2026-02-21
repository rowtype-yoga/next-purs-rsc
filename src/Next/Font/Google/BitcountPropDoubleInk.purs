module Next.Font.Google.BitcountPropDoubleInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountPropDoubleInkImpl :: forall r. { | r } -> FontConfig

bitcountPropDoubleInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountPropDoubleInk = bitcountPropDoubleInkImpl
