module Next.Font.Google.BitcountGridDoubleInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountGridDoubleInkImpl :: forall r. { | r } -> FontConfig

bitcountGridDoubleInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountGridDoubleInk = bitcountGridDoubleInkImpl
