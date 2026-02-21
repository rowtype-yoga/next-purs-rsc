module Next.Font.Google.Handlee where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import handleeImpl :: forall r. { | r } -> FontConfig

handlee :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
handlee = handleeImpl
