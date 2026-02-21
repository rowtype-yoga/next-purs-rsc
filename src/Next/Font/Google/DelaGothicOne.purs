module Next.Font.Google.DelaGothicOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import delaGothicOneImpl :: forall r. { | r } -> FontConfig

delaGothicOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
delaGothicOne = delaGothicOneImpl
