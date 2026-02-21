module Next.Font.Google.UbuntuCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ubuntuCondensedImpl :: forall r. { | r } -> FontConfig

ubuntuCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ubuntuCondensed = ubuntuCondensedImpl
