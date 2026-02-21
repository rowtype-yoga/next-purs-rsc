module Next.Font.Google.LuckiestGuy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import luckiestGuyImpl :: forall r. { | r } -> FontConfig

luckiestGuy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
luckiestGuy = luckiestGuyImpl
