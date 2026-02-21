module Next.Font.Google.KellySlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import kellySlabImpl :: forall r. { | r } -> FontConfig

kellySlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
kellySlab = kellySlabImpl
