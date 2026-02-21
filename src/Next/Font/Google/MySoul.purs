module Next.Font.Google.MySoul where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mySoulImpl :: forall r. { | r } -> FontConfig

mySoul :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mySoul = mySoulImpl
