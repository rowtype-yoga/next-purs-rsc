module Next.Font.Google.Aubrey where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aubreyImpl :: forall r. { | r } -> FontConfig

aubrey :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aubrey = aubreyImpl
