module Next.Font.Google.SairaCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import sairaCondensedImpl :: forall r. { | r } -> FontConfig

sairaCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
sairaCondensed = sairaCondensedImpl
