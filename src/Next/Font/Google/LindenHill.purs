module Next.Font.Google.LindenHill where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lindenHillImpl :: forall r. { | r } -> FontConfig

lindenHill :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lindenHill = lindenHillImpl
