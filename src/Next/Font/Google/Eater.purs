module Next.Font.Google.Eater where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import eaterImpl :: forall r. { | r } -> FontConfig

eater :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
eater = eaterImpl
