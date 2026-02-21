module Next.Font.Google.Federant where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import federantImpl :: forall r. { | r } -> FontConfig

federant :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
federant = federantImpl
