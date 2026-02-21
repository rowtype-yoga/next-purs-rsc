module Next.Font.Google.Neonderthaw where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import neonderthawImpl :: forall r. { | r } -> FontConfig

neonderthaw :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
neonderthaw = neonderthawImpl
