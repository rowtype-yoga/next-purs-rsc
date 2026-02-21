module Next.Font.Google.BarlowSemiCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import barlowSemiCondensedImpl :: forall r. { | r } -> FontConfig

barlowSemiCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
barlowSemiCondensed = barlowSemiCondensedImpl
