module Next.Font.Google.RobotoFlex where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import robotoFlexImpl :: forall r. { | r } -> FontConfig

robotoFlex :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
robotoFlex = robotoFlexImpl
