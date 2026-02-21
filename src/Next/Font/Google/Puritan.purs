module Next.Font.Google.Puritan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import puritanImpl :: forall r. { | r } -> FontConfig

puritan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
puritan = puritanImpl
