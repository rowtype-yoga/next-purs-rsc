module Next.Font.Google.Jua where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import juaImpl :: forall r. { | r } -> FontConfig

jua :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jua = juaImpl
