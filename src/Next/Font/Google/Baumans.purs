module Next.Font.Google.Baumans where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import baumansImpl :: forall r. { | r } -> FontConfig

baumans :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
baumans = baumansImpl
