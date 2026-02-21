module Next.Font.Google.Arvo where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arvoImpl :: forall r. { | r } -> FontConfig

arvo :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arvo = arvoImpl
