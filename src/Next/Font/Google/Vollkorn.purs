module Next.Font.Google.Vollkorn where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vollkornImpl :: forall r. { | r } -> FontConfig

vollkorn :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vollkorn = vollkornImpl
