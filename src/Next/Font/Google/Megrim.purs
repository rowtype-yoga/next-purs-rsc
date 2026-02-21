module Next.Font.Google.Megrim where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import megrimImpl :: forall r. { | r } -> FontConfig

megrim :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
megrim = megrimImpl
