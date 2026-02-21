module Next.Font.Google.Wittgenstein where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import wittgensteinImpl :: forall r. { | r } -> FontConfig

wittgenstein :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
wittgenstein = wittgensteinImpl
