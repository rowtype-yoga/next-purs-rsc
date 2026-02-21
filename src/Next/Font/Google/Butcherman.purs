module Next.Font.Google.Butcherman where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import butchermanImpl :: forall r. { | r } -> FontConfig

butcherman :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
butcherman = butchermanImpl
