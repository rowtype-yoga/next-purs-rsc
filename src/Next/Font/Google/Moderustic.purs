module Next.Font.Google.Moderustic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import moderusticImpl :: forall r. { | r } -> FontConfig

moderustic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
moderustic = moderusticImpl
