module Next.Font.Google.Aladin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aladinImpl :: forall r. { | r } -> FontConfig

aladin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aladin = aladinImpl
