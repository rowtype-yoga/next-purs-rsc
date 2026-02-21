module Next.Font.Google.Michroma where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import michromaImpl :: forall r. { | r } -> FontConfig

michroma :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
michroma = michromaImpl
