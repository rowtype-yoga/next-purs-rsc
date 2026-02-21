module Next.Font.Google.Thasadith where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import thasadithImpl :: forall r. { | r } -> FontConfig

thasadith :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
thasadith = thasadithImpl
