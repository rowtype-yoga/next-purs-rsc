module Next.Font.Google.JosefinSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import josefinSlabImpl :: forall r. { | r } -> FontConfig

josefinSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
josefinSlab = josefinSlabImpl
