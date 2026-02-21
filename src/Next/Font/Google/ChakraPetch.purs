module Next.Font.Google.ChakraPetch where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chakraPetchImpl :: forall r. { | r } -> FontConfig

chakraPetch :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chakraPetch = chakraPetchImpl
