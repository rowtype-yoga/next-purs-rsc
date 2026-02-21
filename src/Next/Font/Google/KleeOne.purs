module Next.Font.Google.KleeOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kleeOneImpl :: forall r. { | r } -> FontConfig

kleeOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kleeOne = kleeOneImpl
