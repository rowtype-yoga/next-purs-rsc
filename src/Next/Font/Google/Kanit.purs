module Next.Font.Google.Kanit where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kanitImpl :: forall r. { | r } -> FontConfig

kanit :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kanit = kanitImpl
