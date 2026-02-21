module Next.Font.Google.BarlowCondensed where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import barlowCondensedImpl :: forall r. { | r } -> FontConfig

barlowCondensed :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
barlowCondensed = barlowCondensedImpl
