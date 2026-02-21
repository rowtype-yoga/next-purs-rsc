module Next.Font.Google.BirthstoneBounce where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import birthstoneBounceImpl :: forall r. { | r } -> FontConfig

birthstoneBounce :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
birthstoneBounce = birthstoneBounceImpl
