module Next.Font.Google.KronaOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kronaOneImpl :: forall r. { | r } -> FontConfig

kronaOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kronaOne = kronaOneImpl
