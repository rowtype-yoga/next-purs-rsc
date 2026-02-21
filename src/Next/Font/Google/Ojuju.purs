module Next.Font.Google.Ojuju where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ojujuImpl :: forall r. { | r } -> FontConfig

ojuju :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ojuju = ojujuImpl
