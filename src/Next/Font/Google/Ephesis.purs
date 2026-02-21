module Next.Font.Google.Ephesis where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import ephesisImpl :: forall r. { | r } -> FontConfig

ephesis :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
ephesis = ephesisImpl
