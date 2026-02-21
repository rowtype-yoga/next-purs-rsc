module Next.Font.Google.Gaegu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gaeguImpl :: forall r. { | r } -> FontConfig

gaegu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gaegu = gaeguImpl
