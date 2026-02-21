module Next.Font.Google.ComingSoon where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import comingSoonImpl :: forall r. { | r } -> FontConfig

comingSoon :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
comingSoon = comingSoonImpl
