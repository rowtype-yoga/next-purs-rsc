module Next.Font.Google.RalewayDots where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ralewayDotsImpl :: forall r. { | r } -> FontConfig

ralewayDots :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ralewayDots = ralewayDotsImpl
