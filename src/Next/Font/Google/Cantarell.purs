module Next.Font.Google.Cantarell where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cantarellImpl :: forall r. { | r } -> FontConfig

cantarell :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cantarell = cantarellImpl
