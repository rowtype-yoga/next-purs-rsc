module Next.Font.Google.SedgwickAve where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sedgwickAveImpl :: forall r. { | r } -> FontConfig

sedgwickAve :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sedgwickAve = sedgwickAveImpl
