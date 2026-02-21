module Next.Font.Google.Inter where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import interImpl :: forall r. { | r } -> FontConfig

inter :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
inter = interImpl
