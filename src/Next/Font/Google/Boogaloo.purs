module Next.Font.Google.Boogaloo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import boogalooImpl :: forall r. { | r } -> FontConfig

boogaloo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
boogaloo = boogalooImpl
