module Next.Font.Google.Romanesco where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import romanescoImpl :: forall r. { | r } -> FontConfig

romanesco :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
romanesco = romanescoImpl
