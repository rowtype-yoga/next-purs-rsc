module Next.Font.Google.KaiseiDecol where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kaiseiDecolImpl :: forall r. { | r } -> FontConfig

kaiseiDecol :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kaiseiDecol = kaiseiDecolImpl
