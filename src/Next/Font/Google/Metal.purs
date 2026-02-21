module Next.Font.Google.Metal where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import metalImpl :: forall r. { | r } -> FontConfig

metal :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
metal = metalImpl
