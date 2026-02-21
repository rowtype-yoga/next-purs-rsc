module Next.Font.Google.QuattrocentoSans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import quattrocentoSansImpl :: forall r. { | r } -> FontConfig

quattrocentoSans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
quattrocentoSans = quattrocentoSansImpl
