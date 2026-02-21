module Next.Font.Google.MeeraInimai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import meeraInimaiImpl :: forall r. { | r } -> FontConfig

meeraInimai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
meeraInimai = meeraInimaiImpl
