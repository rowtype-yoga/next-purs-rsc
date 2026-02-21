module Next.Font.Google.BethEllen where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bethEllenImpl :: forall r. { | r } -> FontConfig

bethEllen :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bethEllen = bethEllenImpl
