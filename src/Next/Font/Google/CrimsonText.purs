module Next.Font.Google.CrimsonText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import crimsonTextImpl :: forall r. { | r } -> FontConfig

crimsonText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
crimsonText = crimsonTextImpl
