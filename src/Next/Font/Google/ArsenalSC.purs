module Next.Font.Google.ArsenalSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arsenalSCImpl :: forall r. { | r } -> FontConfig

arsenalSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arsenalSC = arsenalSCImpl
