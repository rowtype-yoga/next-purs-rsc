module Next.Font.Google.CrimsonPro where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import crimsonProImpl :: forall r. { | r } -> FontConfig

crimsonPro :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
crimsonPro = crimsonProImpl
