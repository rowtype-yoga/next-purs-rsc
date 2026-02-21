module Next.Font.Google.Ruthie where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ruthieImpl :: forall r. { | r } -> FontConfig

ruthie :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ruthie = ruthieImpl
