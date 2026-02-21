module Next.Font.Google.Plaster where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import plasterImpl :: forall r. { | r } -> FontConfig

plaster :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
plaster = plasterImpl
