module Next.Font.Google.Overlock where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import overlockImpl :: forall r. { | r } -> FontConfig

overlock :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
overlock = overlockImpl
