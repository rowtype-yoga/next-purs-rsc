module Next.Font.Google.BitcountPropDouble where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountPropDoubleImpl :: forall r. { | r } -> FontConfig

bitcountPropDouble :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountPropDouble = bitcountPropDoubleImpl
