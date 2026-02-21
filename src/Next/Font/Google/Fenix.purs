module Next.Font.Google.Fenix where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fenixImpl :: forall r. { | r } -> FontConfig

fenix :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fenix = fenixImpl
