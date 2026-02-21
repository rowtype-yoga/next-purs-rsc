module Next.Font.Google.Aboreto where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aboretoImpl :: forall r. { | r } -> FontConfig

aboreto :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aboreto = aboretoImpl
