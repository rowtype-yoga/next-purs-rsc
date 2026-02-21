module Next.Font.Google.Carattere where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import carattereImpl :: forall r. { | r } -> FontConfig

carattere :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
carattere = carattereImpl
