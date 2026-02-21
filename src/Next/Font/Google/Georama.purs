module Next.Font.Google.Georama where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import georamaImpl :: forall r. { | r } -> FontConfig

georama :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
georama = georamaImpl
