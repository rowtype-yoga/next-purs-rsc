module Next.Font.Google.Gabarito where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gabaritoImpl :: forall r. { | r } -> FontConfig

gabarito :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gabarito = gabaritoImpl
