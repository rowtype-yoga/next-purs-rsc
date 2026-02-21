module Next.Font.Google.Manjari where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import manjariImpl :: forall r. { | r } -> FontConfig

manjari :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
manjari = manjariImpl
