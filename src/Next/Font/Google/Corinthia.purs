module Next.Font.Google.Corinthia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import corinthiaImpl :: forall r. { | r } -> FontConfig

corinthia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
corinthia = corinthiaImpl
