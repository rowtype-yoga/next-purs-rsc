module Next.Font.Google.HomemadeApple where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import homemadeAppleImpl :: forall r. { | r } -> FontConfig

homemadeApple :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
homemadeApple = homemadeAppleImpl
