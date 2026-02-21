module Next.Font.Google.Julee where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import juleeImpl :: forall r. { | r } -> FontConfig

julee :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
julee = juleeImpl
