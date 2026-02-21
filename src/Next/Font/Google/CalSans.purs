module Next.Font.Google.CalSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import calSansImpl :: forall r. { | r } -> FontConfig

calSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
calSans = calSansImpl
