module Next.Font.Google.Oswald where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import oswaldImpl :: forall r. { | r } -> FontConfig

oswald :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
oswald = oswaldImpl
