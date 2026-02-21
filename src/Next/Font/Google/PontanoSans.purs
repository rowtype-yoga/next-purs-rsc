module Next.Font.Google.PontanoSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import pontanoSansImpl :: forall r. { | r } -> FontConfig

pontanoSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
pontanoSans = pontanoSansImpl
