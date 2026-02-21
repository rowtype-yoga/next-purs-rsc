module Next.Font.Google.RobotoMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import robotoMonoImpl :: forall r. { | r } -> FontConfig

robotoMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
robotoMono = robotoMonoImpl
