module Next.Font.Google.HindMadurai where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import hindMaduraiImpl :: forall r. { | r } -> FontConfig

hindMadurai :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
hindMadurai = hindMaduraiImpl
