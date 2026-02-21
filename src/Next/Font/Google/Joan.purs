module Next.Font.Google.Joan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import joanImpl :: forall r. { | r } -> FontConfig

joan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
joan = joanImpl
