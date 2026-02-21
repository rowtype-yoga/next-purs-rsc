module Next.Font.Google.Literata where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import literataImpl :: forall r. { | r } -> FontConfig

literata :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
literata = literataImpl
