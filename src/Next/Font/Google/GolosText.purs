module Next.Font.Google.GolosText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import golosTextImpl :: forall r. { | r } -> FontConfig

golosText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
golosText = golosTextImpl
