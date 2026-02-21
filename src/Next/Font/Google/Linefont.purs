module Next.Font.Google.Linefont where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import linefontImpl :: forall r. { | r } -> FontConfig

linefont :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
linefont = linefontImpl
