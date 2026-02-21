module Next.Font.Google.UbuntuMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ubuntuMonoImpl :: forall r. { | r } -> FontConfig

ubuntuMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ubuntuMono = ubuntuMonoImpl
