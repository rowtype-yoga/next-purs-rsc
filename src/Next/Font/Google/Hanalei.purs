module Next.Font.Google.Hanalei where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hanaleiImpl :: forall r. { | r } -> FontConfig

hanalei :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hanalei = hanaleiImpl
