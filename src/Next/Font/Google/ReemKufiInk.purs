module Next.Font.Google.ReemKufiInk where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import reemKufiInkImpl :: forall r. { | r } -> FontConfig

reemKufiInk :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
reemKufiInk = reemKufiInkImpl
