module Next.Font.Google.Anton where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import antonImpl :: forall r. { | r } -> FontConfig

anton :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anton = antonImpl
