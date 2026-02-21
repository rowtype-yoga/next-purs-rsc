module Next.Font.Google.Capriola where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import capriolaImpl :: forall r. { | r } -> FontConfig

capriola :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
capriola = capriolaImpl
