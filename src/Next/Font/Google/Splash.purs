module Next.Font.Google.Splash where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import splashImpl :: forall r. { | r } -> FontConfig

splash :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
splash = splashImpl
