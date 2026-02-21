module Next.Font.Google.NoticiaText where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import noticiaTextImpl :: forall r. { | r } -> FontConfig

noticiaText :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
noticiaText = noticiaTextImpl
