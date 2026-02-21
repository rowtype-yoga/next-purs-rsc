module Next.Font.Google.BitcountSingle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountSingleImpl :: forall r. { | r } -> FontConfig

bitcountSingle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountSingle = bitcountSingleImpl
