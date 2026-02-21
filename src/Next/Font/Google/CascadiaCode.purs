module Next.Font.Google.CascadiaCode where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cascadiaCodeImpl :: forall r. { | r } -> FontConfig

cascadiaCode :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cascadiaCode = cascadiaCodeImpl
