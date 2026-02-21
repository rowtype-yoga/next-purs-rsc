module Next.Font.Google.Qwigley where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import qwigleyImpl :: forall r. { | r } -> FontConfig

qwigley :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
qwigley = qwigleyImpl
