module Next.Font.Google.Gupter where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gupterImpl :: forall r. { | r } -> FontConfig

gupter :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gupter = gupterImpl
