module Next.Font.Google.AguDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aguDisplayImpl :: forall r. { | r } -> FontConfig

aguDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aguDisplay = aguDisplayImpl
