module Next.Font.Google.RobotoSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import robotoSerifImpl :: forall r. { | r } -> FontConfig

robotoSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
robotoSerif = robotoSerifImpl
