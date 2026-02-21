module Next.Font.Google.AkayaTelivigala where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import akayaTelivigalaImpl :: forall r. { | r } -> FontConfig

akayaTelivigala :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
akayaTelivigala = akayaTelivigalaImpl
