module Next.Font.Google.PlaywriteGBJ where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import playwriteGBJImpl :: forall r. { | r } -> FontConfig

playwriteGBJ :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
playwriteGBJ = playwriteGBJImpl
