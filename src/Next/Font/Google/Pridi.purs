module Next.Font.Google.Pridi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pridiImpl :: forall r. { | r } -> FontConfig

pridi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pridi = pridiImpl
