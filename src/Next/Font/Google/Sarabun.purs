module Next.Font.Google.Sarabun where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sarabunImpl :: forall r. { | r } -> FontConfig

sarabun :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sarabun = sarabunImpl
