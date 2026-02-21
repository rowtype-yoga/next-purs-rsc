module Next.Font.Google.AnnapurnaSIL where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import annapurnaSILImpl :: forall r. { | r } -> FontConfig

annapurnaSIL :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
annapurnaSIL = annapurnaSILImpl
