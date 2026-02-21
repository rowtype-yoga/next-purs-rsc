module Next.Font.Google.ComicNeue where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import comicNeueImpl :: forall r. { | r } -> FontConfig

comicNeue :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
comicNeue = comicNeueImpl
