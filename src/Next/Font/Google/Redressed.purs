module Next.Font.Google.Redressed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redressedImpl :: forall r. { | r } -> FontConfig

redressed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redressed = redressedImpl
