module Next.Font.Google.Kufam where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kufamImpl :: forall r. { | r } -> FontConfig

kufam :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kufam = kufamImpl
