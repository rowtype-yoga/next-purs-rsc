module Next.Font.Google.YesevaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import yesevaOneImpl :: forall r. { | r } -> FontConfig

yesevaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
yesevaOne = yesevaOneImpl
