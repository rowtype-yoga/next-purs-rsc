module Next.Font.Google.Corben where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import corbenImpl :: forall r. { | r } -> FontConfig

corben :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
corben = corbenImpl
