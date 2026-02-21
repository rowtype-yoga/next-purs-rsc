module Next.Font.Google.ProtestStrike where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import protestStrikeImpl :: forall r. { | r } -> FontConfig

protestStrike :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
protestStrike = protestStrikeImpl
