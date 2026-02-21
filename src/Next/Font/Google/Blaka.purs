module Next.Font.Google.Blaka where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import blakaImpl :: forall r. { | r } -> FontConfig

blaka :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
blaka = blakaImpl
