module Next.Font.Google.Sedan where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sedanImpl :: forall r. { | r } -> FontConfig

sedan :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sedan = sedanImpl
