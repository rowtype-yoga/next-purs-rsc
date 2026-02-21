module Next.Font.Google.CharisSIL where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import charisSILImpl :: forall r. { | r } -> FontConfig

charisSIL :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
charisSIL = charisSILImpl
