module Next.Font.Google.Lato where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import latoImpl :: forall r. { | r } -> FontConfig

lato :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lato = latoImpl
