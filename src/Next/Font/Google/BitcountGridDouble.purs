module Next.Font.Google.BitcountGridDouble where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountGridDoubleImpl :: forall r. { | r } -> FontConfig

bitcountGridDouble :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountGridDouble = bitcountGridDoubleImpl
