module Next.Font.Google.AmaticSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amaticSCImpl :: forall r. { | r } -> FontConfig

amaticSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amaticSC = amaticSCImpl
