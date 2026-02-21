module Next.Font.Google.ZillaSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zillaSlabImpl :: forall r. { | r } -> FontConfig

zillaSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zillaSlab = zillaSlabImpl
