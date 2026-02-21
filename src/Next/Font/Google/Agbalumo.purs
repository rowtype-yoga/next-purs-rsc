module Next.Font.Google.Agbalumo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import agbalumoImpl :: forall r. { | r } -> FontConfig

agbalumo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
agbalumo = agbalumoImpl
