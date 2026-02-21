module Next.Font.Google.Vibes where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import vibesImpl :: forall r. { | r } -> FontConfig

vibes :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
vibes = vibesImpl
