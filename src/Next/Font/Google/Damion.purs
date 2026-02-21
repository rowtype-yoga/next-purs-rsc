module Next.Font.Google.Damion where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import damionImpl :: forall r. { | r } -> FontConfig

damion :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
damion = damionImpl
