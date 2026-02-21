module Next.Font.Google.Sofia where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sofiaImpl :: forall r. { | r } -> FontConfig

sofia :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sofia = sofiaImpl
