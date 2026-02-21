module Next.Font.Google.JosefinSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import josefinSansImpl :: forall r. { | r } -> FontConfig

josefinSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
josefinSans = josefinSansImpl
