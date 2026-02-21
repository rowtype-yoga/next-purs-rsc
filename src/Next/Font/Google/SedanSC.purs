module Next.Font.Google.SedanSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sedanSCImpl :: forall r. { | r } -> FontConfig

sedanSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sedanSC = sedanSCImpl
