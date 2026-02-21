module Next.Font.Google.CormorantUpright where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cormorantUprightImpl :: forall r. { | r } -> FontConfig

cormorantUpright :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cormorantUpright = cormorantUprightImpl
