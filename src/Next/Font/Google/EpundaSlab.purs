module Next.Font.Google.EpundaSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import epundaSlabImpl :: forall r. { | r } -> FontConfig

epundaSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
epundaSlab = epundaSlabImpl
