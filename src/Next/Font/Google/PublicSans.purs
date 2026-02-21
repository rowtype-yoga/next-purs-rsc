module Next.Font.Google.PublicSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import publicSansImpl :: forall r. { | r } -> FontConfig

publicSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
publicSans = publicSansImpl
