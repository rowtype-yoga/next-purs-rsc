module Next.Font.Google.NotoSerifDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifDisplayImpl :: forall r. { | r } -> FontConfig

notoSerifDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifDisplay = notoSerifDisplayImpl
