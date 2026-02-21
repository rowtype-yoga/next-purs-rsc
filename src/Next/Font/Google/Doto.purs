module Next.Font.Google.Doto where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import dotoImpl :: forall r. { | r } -> FontConfig

doto :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
doto = dotoImpl
