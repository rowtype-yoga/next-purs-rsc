module Next.Font.Google.UbuntuSansMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ubuntuSansMonoImpl :: forall r. { | r } -> FontConfig

ubuntuSansMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ubuntuSansMono = ubuntuSansMonoImpl
