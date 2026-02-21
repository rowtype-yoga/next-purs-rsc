module Next.Font.Google.Afacad where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import afacadImpl :: forall r. { | r } -> FontConfig

afacad :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
afacad = afacadImpl
