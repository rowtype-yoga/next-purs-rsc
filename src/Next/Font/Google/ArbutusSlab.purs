module Next.Font.Google.ArbutusSlab where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import arbutusSlabImpl :: forall r. { | r } -> FontConfig

arbutusSlab :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
arbutusSlab = arbutusSlabImpl
