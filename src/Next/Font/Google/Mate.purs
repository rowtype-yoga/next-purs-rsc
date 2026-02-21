module Next.Font.Google.Mate where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mateImpl :: forall r. { | r } -> FontConfig

mate :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mate = mateImpl
