module Next.Font.Google.Exile where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import exileImpl :: forall r. { | r } -> FontConfig

exile :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
exile = exileImpl
