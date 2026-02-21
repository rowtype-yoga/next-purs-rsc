module Next.Font.Google.LilitaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lilitaOneImpl :: forall r. { | r } -> FontConfig

lilitaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lilitaOne = lilitaOneImpl
