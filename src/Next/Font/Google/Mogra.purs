module Next.Font.Google.Mogra where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mograImpl :: forall r. { | r } -> FontConfig

mogra :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mogra = mograImpl
