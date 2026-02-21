module Next.Font.Google.Rye where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ryeImpl :: forall r. { | r } -> FontConfig

rye :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rye = ryeImpl
