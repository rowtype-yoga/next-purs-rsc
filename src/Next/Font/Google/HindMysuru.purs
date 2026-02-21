module Next.Font.Google.HindMysuru where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hindMysuruImpl :: forall r. { | r } -> FontConfig

hindMysuru :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hindMysuru = hindMysuruImpl
