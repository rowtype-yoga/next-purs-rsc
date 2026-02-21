module Next.Font.Google.MontaguSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import montaguSlabImpl :: forall r. { | r } -> FontConfig

montaguSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
montaguSlab = montaguSlabImpl
