module Next.Font.Google.MozillaText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mozillaTextImpl :: forall r. { | r } -> FontConfig

mozillaText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mozillaText = mozillaTextImpl
