module Next.Font.Google.ZalandoSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zalandoSansImpl :: forall r. { | r } -> FontConfig

zalandoSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zalandoSans = zalandoSansImpl
