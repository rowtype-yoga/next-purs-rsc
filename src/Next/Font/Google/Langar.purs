module Next.Font.Google.Langar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import langarImpl :: forall r. { | r } -> FontConfig

langar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
langar = langarImpl
