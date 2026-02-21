module Next.Font.Google.Esteban where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import estebanImpl :: forall r. { | r } -> FontConfig

esteban :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
esteban = estebanImpl
