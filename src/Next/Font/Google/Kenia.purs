module Next.Font.Google.Kenia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import keniaImpl :: forall r. { | r } -> FontConfig

kenia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kenia = keniaImpl
