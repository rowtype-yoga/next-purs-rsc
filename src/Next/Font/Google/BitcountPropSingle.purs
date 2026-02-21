module Next.Font.Google.BitcountPropSingle where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitcountPropSingleImpl :: forall r. { | r } -> FontConfig

bitcountPropSingle :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitcountPropSingle = bitcountPropSingleImpl
