module Next.Font.Google.Boldonse where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import boldonseImpl :: forall r. { | r } -> FontConfig

boldonse :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
boldonse = boldonseImpl
