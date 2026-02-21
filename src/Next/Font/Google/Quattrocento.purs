module Next.Font.Google.Quattrocento where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import quattrocentoImpl :: forall r. { | r } -> FontConfig

quattrocento :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
quattrocento = quattrocentoImpl
