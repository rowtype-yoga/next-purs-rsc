module Next.Font.Google.Macondo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import macondoImpl :: forall r. { | r } -> FontConfig

macondo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
macondo = macondoImpl
