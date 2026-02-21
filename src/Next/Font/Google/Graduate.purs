module Next.Font.Google.Graduate where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import graduateImpl :: forall r. { | r } -> FontConfig

graduate :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
graduate = graduateImpl
