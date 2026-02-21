module Next.Font.Google.Monoton where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import monotonImpl :: forall r. { | r } -> FontConfig

monoton :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
monoton = monotonImpl
