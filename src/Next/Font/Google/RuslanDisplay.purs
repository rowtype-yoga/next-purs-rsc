module Next.Font.Google.RuslanDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ruslanDisplayImpl :: forall r. { | r } -> FontConfig

ruslanDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ruslanDisplay = ruslanDisplayImpl
