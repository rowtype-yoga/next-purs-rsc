module Next.Font.Google.PlaywriteTZ where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteTZImpl :: forall r. { | r } -> FontConfig

playwriteTZ :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteTZ = playwriteTZImpl
