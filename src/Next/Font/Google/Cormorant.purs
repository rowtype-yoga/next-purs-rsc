module Next.Font.Google.Cormorant where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import cormorantImpl :: forall r. { | r } -> FontConfig

cormorant :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
cormorant = cormorantImpl
