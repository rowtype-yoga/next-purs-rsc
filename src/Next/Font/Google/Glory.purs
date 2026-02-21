module Next.Font.Google.Glory where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gloryImpl :: forall r. { | r } -> FontConfig

glory :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
glory = gloryImpl
