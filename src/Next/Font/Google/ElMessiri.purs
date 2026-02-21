module Next.Font.Google.ElMessiri where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import elMessiriImpl :: forall r. { | r } -> FontConfig

elMessiri :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
elMessiri = elMessiriImpl
