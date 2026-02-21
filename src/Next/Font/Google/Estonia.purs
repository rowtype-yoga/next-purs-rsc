module Next.Font.Google.Estonia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import estoniaImpl :: forall r. { | r } -> FontConfig

estonia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
estonia = estoniaImpl
