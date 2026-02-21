module Next.Font.Google.MadimiOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import madimiOneImpl :: forall r. { | r } -> FontConfig

madimiOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
madimiOne = madimiOneImpl
