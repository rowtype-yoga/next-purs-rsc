module Next.Font.Google.Mallanna where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mallannaImpl :: forall r. { | r } -> FontConfig

mallanna :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mallanna = mallannaImpl
