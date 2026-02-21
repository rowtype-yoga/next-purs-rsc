module Next.Font.Google.Alexandria where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alexandriaImpl :: forall r. { | r } -> FontConfig

alexandria :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alexandria = alexandriaImpl
