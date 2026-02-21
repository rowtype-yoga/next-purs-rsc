module Next.Font.Google.Kristi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kristiImpl :: forall r. { | r } -> FontConfig

kristi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kristi = kristiImpl
