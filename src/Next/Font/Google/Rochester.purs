module Next.Font.Google.Rochester where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rochesterImpl :: forall r. { | r } -> FontConfig

rochester :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rochester = rochesterImpl
