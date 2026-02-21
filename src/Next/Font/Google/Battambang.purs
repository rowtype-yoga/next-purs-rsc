module Next.Font.Google.Battambang where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import battambangImpl :: forall r. { | r } -> FontConfig

battambang :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
battambang = battambangImpl
