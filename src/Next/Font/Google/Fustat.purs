module Next.Font.Google.Fustat where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fustatImpl :: forall r. { | r } -> FontConfig

fustat :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fustat = fustatImpl
