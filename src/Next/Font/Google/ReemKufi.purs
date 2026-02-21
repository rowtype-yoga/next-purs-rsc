module Next.Font.Google.ReemKufi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import reemKufiImpl :: forall r. { | r } -> FontConfig

reemKufi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
reemKufi = reemKufiImpl
