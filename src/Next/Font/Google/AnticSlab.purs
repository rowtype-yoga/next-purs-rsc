module Next.Font.Google.AnticSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import anticSlabImpl :: forall r. { | r } -> FontConfig

anticSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
anticSlab = anticSlabImpl
