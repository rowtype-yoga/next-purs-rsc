module Next.Font.Google.PlaywriteIN where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteINImpl :: forall r. { | r } -> FontConfig

playwriteIN :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteIN = playwriteINImpl
