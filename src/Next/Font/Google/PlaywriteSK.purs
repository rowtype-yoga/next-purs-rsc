module Next.Font.Google.PlaywriteSK where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteSKImpl :: forall r. { | r } -> FontConfig

playwriteSK :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteSK = playwriteSKImpl
