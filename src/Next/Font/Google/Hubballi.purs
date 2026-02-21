module Next.Font.Google.Hubballi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hubballiImpl :: forall r. { | r } -> FontConfig

hubballi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hubballi = hubballiImpl
