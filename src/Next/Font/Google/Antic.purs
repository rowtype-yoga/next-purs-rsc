module Next.Font.Google.Antic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anticImpl :: forall r. { | r } -> FontConfig

antic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
antic = anticImpl
