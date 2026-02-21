module Next.Font.Google.Hurricane where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hurricaneImpl :: forall r. { | r } -> FontConfig

hurricane :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hurricane = hurricaneImpl
