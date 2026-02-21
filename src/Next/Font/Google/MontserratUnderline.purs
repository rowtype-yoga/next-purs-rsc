module Next.Font.Google.MontserratUnderline where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import montserratUnderlineImpl :: forall r. { | r } -> FontConfig

montserratUnderline :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
montserratUnderline = montserratUnderlineImpl
