module Next.Font.Google.Akronim where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import akronimImpl :: forall r. { | r } -> FontConfig

akronim :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
akronim = akronimImpl
