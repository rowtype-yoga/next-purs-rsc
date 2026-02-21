module Next.Font.Google.Fruktur where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import frukturImpl :: forall r. { | r } -> FontConfig

fruktur :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fruktur = frukturImpl
