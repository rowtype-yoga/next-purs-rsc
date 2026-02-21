module Next.Font.Google.EduAUVICWANTDots where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduAUVICWANTDotsImpl :: forall r. { | r } -> FontConfig

eduAUVICWANTDots :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduAUVICWANTDots = eduAUVICWANTDotsImpl
