module Next.Font.Google.Dangrek where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dangrekImpl :: forall r. { | r } -> FontConfig

dangrek :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
dangrek = dangrekImpl
