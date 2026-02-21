module Next.Font.Google.Paprika where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import paprikaImpl :: forall r. { | r } -> FontConfig

paprika :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
paprika = paprikaImpl
