module Next.Font.Google.BitcountGridSingleInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountGridSingleInkImpl :: forall r. { | r } -> FontConfig

bitcountGridSingleInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountGridSingleInk = bitcountGridSingleInkImpl
