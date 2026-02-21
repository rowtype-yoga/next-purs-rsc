module Next.Font.Google.SedgwickAveDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sedgwickAveDisplayImpl :: forall r. { | r } -> FontConfig

sedgwickAveDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sedgwickAveDisplay = sedgwickAveDisplayImpl
