module Next.Font.Google.Arapey where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arapeyImpl :: forall r. { | r } -> FontConfig

arapey :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arapey = arapeyImpl
