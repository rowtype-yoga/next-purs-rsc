module Next.Font.Google.SankofaDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sankofaDisplayImpl :: forall r. { | r } -> FontConfig

sankofaDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sankofaDisplay = sankofaDisplayImpl
