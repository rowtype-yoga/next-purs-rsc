module Next.Font.Google.Changa where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import changaImpl :: forall r. { | r } -> FontConfig

changa :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
changa = changaImpl
