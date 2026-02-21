module Next.Font.Google.Alatsi where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alatsiImpl :: forall r. { | r } -> FontConfig

alatsi :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alatsi = alatsiImpl
