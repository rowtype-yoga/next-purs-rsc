module Next.Font.Google.Amaranth where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import amaranthImpl :: forall r. { | r } -> FontConfig

amaranth :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
amaranth = amaranthImpl
