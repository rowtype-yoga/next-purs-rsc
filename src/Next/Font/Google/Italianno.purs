module Next.Font.Google.Italianno where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import italiannoImpl :: forall r. { | r } -> FontConfig

italianno :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
italianno = italiannoImpl
