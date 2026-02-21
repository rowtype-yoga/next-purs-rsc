module Next.Font.Google.PlaywriteBR where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteBRImpl :: forall r. { | r } -> FontConfig

playwriteBR :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteBR = playwriteBRImpl
