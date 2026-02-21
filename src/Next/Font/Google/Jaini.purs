module Next.Font.Google.Jaini where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jainiImpl :: forall r. { | r } -> FontConfig

jaini :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jaini = jainiImpl
