module Next.Font.Google.Crushed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import crushedImpl :: forall r. { | r } -> FontConfig

crushed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
crushed = crushedImpl
