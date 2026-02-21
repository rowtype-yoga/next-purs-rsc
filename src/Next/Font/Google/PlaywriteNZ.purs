module Next.Font.Google.PlaywriteNZ where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteNZImpl :: forall r. { | r } -> FontConfig

playwriteNZ :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteNZ = playwriteNZImpl
