module Next.Font.Google.LoversQuarrel where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import loversQuarrelImpl :: forall r. { | r } -> FontConfig

loversQuarrel :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
loversQuarrel = loversQuarrelImpl
