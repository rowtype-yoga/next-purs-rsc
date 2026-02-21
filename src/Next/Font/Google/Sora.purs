module Next.Font.Google.Sora where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import soraImpl :: forall r. { | r } -> FontConfig

sora :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sora = soraImpl
