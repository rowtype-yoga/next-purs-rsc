module Next.Font.Google.Skranji where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import skranjiImpl :: forall r. { | r } -> FontConfig

skranji :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
skranji = skranjiImpl
