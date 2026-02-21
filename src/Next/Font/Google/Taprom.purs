module Next.Font.Google.Taprom where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import tapromImpl :: forall r. { | r } -> FontConfig

taprom :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
taprom = tapromImpl
