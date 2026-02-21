module Next.Font.Google.Habibi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import habibiImpl :: forall r. { | r } -> FontConfig

habibi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
habibi = habibiImpl
