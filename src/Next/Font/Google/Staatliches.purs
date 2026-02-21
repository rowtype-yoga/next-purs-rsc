module Next.Font.Google.Staatliches where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import staatlichesImpl :: forall r. { | r } -> FontConfig

staatliches :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
staatliches = staatlichesImpl
