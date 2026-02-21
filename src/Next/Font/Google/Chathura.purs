module Next.Font.Google.Chathura where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chathuraImpl :: forall r. { | r } -> FontConfig

chathura :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chathura = chathuraImpl
