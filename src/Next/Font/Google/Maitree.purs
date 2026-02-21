module Next.Font.Google.Maitree where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import maitreeImpl :: forall r. { | r } -> FontConfig

maitree :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
maitree = maitreeImpl
