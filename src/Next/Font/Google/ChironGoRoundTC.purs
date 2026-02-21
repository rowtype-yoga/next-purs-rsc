module Next.Font.Google.ChironGoRoundTC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import chironGoRoundTCImpl :: forall r. { | r } -> FontConfig

chironGoRoundTC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
chironGoRoundTC = chironGoRoundTCImpl
