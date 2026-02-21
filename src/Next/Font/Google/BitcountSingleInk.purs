module Next.Font.Google.BitcountSingleInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountSingleInkImpl :: forall r. { | r } -> FontConfig

bitcountSingleInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountSingleInk = bitcountSingleInkImpl
