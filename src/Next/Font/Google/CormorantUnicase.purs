module Next.Font.Google.CormorantUnicase where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cormorantUnicaseImpl :: forall r. { | r } -> FontConfig

cormorantUnicase :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cormorantUnicase = cormorantUnicaseImpl
