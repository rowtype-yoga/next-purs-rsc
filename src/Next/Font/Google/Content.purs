module Next.Font.Google.Content where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import contentImpl :: forall r. { | r } -> FontConfig

content :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
content = contentImpl
