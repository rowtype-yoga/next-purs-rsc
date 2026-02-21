module Next.Font.Google.Cookie where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cookieImpl :: forall r. { | r } -> FontConfig

cookie :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cookie = cookieImpl
