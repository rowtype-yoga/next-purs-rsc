module Next.Font.Google.HeptaSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import heptaSlabImpl :: forall r. { | r } -> FontConfig

heptaSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
heptaSlab = heptaSlabImpl
