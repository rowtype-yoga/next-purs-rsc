module Next.Font.Google.Rajdhani where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rajdhaniImpl :: forall r. { | r } -> FontConfig

rajdhani :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rajdhani = rajdhaniImpl
