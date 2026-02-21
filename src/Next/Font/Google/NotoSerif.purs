module Next.Font.Google.NotoSerif where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import notoSerifImpl :: forall r. { | r } -> FontConfig

notoSerif :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
notoSerif = notoSerifImpl
