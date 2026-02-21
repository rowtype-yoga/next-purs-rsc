module Next.Font.Google.PlaywriteHR where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteHRImpl :: forall r. { | r } -> FontConfig

playwriteHR :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteHR = playwriteHRImpl
