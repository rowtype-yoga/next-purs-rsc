module Next.Font.Google.Knewave where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import knewaveImpl :: forall r. { | r } -> FontConfig

knewave :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
knewave = knewaveImpl
