module Next.Font.Google.BitcountInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountInkImpl :: forall r. { | r } -> FontConfig

bitcountInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountInk = bitcountInkImpl
