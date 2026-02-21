module Next.Font.Google.Roboto where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import robotoImpl :: forall r. { | r } -> FontConfig

roboto :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
roboto = robotoImpl
