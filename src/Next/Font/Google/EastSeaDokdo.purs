module Next.Font.Google.EastSeaDokdo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eastSeaDokdoImpl :: forall r. { | r } -> FontConfig

eastSeaDokdo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eastSeaDokdo = eastSeaDokdoImpl
