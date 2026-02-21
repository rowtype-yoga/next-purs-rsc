module Next.Font.Google.BitcountGridSingle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountGridSingleImpl :: forall r. { | r } -> FontConfig

bitcountGridSingle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountGridSingle = bitcountGridSingleImpl
