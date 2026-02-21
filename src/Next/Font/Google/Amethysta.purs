module Next.Font.Google.Amethysta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amethystaImpl :: forall r. { | r } -> FontConfig

amethysta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amethysta = amethystaImpl
