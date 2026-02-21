module Next.Font.Google.EduAUVICWANTGuides where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eduAUVICWANTGuidesImpl :: forall r. { | r } -> FontConfig

eduAUVICWANTGuides :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eduAUVICWANTGuides = eduAUVICWANTGuidesImpl
