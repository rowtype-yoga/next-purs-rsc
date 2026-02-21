module Next.Font.Google.Cambo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import camboImpl :: forall r. { | r } -> FontConfig

cambo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cambo = camboImpl
