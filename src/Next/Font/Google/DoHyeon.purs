module Next.Font.Google.DoHyeon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import doHyeonImpl :: forall r. { | r } -> FontConfig

doHyeon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
doHyeon = doHyeonImpl
