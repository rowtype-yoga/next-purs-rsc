module Next.Font.Google.NotoSerifOriya where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifOriyaImpl :: forall r. { | r } -> FontConfig

notoSerifOriya :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerifOriya = notoSerifOriyaImpl
