module Next.Font.Google.Moul where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import moulImpl :: forall r. { | r } -> FontConfig

moul :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
moul = moulImpl
