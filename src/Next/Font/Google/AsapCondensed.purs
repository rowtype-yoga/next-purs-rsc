module Next.Font.Google.AsapCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import asapCondensedImpl :: forall r. { | r } -> FontConfig

asapCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
asapCondensed = asapCondensedImpl
