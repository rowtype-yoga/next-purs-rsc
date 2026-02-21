module Next.Font.Google.BitcountPropSingleInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountPropSingleInkImpl :: forall r. { | r } -> FontConfig

bitcountPropSingleInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountPropSingleInk = bitcountPropSingleInkImpl
