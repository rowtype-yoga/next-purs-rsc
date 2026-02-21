module Next.Font.Google.CormorantSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cormorantSCImpl :: forall r. { | r } -> FontConfig

cormorantSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cormorantSC = cormorantSCImpl
