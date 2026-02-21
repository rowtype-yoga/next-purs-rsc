module Next.Font.Google.Shafarik where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import shafarikImpl :: forall r. { | r } -> FontConfig

shafarik :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
shafarik = shafarikImpl
