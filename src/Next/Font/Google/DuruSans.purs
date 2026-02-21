module Next.Font.Google.DuruSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import duruSansImpl :: forall r. { | r } -> FontConfig

duruSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
duruSans = duruSansImpl
