module Next.Font.Google.Podkova where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import podkovaImpl :: forall r. { | r } -> FontConfig

podkova :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
podkova = podkovaImpl
