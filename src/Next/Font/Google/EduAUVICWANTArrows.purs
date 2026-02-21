module Next.Font.Google.EduAUVICWANTArrows where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduAUVICWANTArrowsImpl :: forall r. { | r } -> FontConfig

eduAUVICWANTArrows :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduAUVICWANTArrows = eduAUVICWANTArrowsImpl
