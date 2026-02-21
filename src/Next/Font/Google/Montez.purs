module Next.Font.Google.Montez where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import montezImpl :: forall r. { | r } -> FontConfig

montez :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
montez = montezImpl
