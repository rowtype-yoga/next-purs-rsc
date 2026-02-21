module Next.Font.Google.Bitter where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import bitterImpl :: forall r. { | r } -> FontConfig

bitter :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
bitter = bitterImpl
