module Next.Font.Google.Rowdies where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rowdiesImpl :: forall r. { | r } -> FontConfig

rowdies :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rowdies = rowdiesImpl
