module Next.Font.Google.Prociono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import procionoImpl :: forall r. { | r } -> FontConfig

prociono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
prociono = procionoImpl
