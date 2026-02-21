module Next.Font.Google.PlaywriteGBS where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteGBSImpl :: forall r. { | r } -> FontConfig

playwriteGBS :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteGBS = playwriteGBSImpl
