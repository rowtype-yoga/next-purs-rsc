module Next.Font.Google.Chilanka where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chilankaImpl :: forall r. { | r } -> FontConfig

chilanka :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chilanka = chilankaImpl
