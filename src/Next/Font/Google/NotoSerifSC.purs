module Next.Font.Google.NotoSerifSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifSCImpl :: forall r. { | r } -> FontConfig

notoSerifSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifSC = notoSerifSCImpl
