module Next.Font.Google.KarlaTamilUpright where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import karlaTamilUprightImpl :: forall r. { | r } -> FontConfig

karlaTamilUpright :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
karlaTamilUpright = karlaTamilUprightImpl
