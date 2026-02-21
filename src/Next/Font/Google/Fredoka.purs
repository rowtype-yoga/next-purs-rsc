module Next.Font.Google.Fredoka where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import fredokaImpl :: forall r. { | r } -> FontConfig

fredoka :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
fredoka = fredokaImpl
