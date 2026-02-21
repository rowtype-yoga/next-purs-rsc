module Next.Font.Google.SpecialGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import specialGothicImpl :: forall r. { | r } -> FontConfig

specialGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
specialGothic = specialGothicImpl
