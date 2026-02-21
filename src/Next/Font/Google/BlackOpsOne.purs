module Next.Font.Google.BlackOpsOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import blackOpsOneImpl :: forall r. { | r } -> FontConfig

blackOpsOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
blackOpsOne = blackOpsOneImpl
