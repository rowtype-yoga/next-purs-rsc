module Next.Font.Google.Hind where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hindImpl :: forall r. { | r } -> FontConfig

hind :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hind = hindImpl
