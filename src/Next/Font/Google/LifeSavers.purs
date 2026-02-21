module Next.Font.Google.LifeSavers where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lifeSaversImpl :: forall r. { | r } -> FontConfig

lifeSavers :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lifeSavers = lifeSaversImpl
