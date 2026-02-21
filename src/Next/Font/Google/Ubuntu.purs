module Next.Font.Google.Ubuntu where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ubuntuImpl :: forall r. { | r } -> FontConfig

ubuntu :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ubuntu = ubuntuImpl
