module Next.Font.Google.Notable where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notableImpl :: forall r. { | r } -> FontConfig

notable :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notable = notableImpl
