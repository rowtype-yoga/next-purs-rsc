module Next.Font.Google.Caveat where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import caveatImpl :: forall r. { | r } -> FontConfig

caveat :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
caveat = caveatImpl
