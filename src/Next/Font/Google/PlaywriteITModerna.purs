module Next.Font.Google.PlaywriteITModerna where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteITModernaImpl :: forall r. { | r } -> FontConfig

playwriteITModerna :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteITModerna = playwriteITModernaImpl
