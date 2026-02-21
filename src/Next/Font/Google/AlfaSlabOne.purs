module Next.Font.Google.AlfaSlabOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import alfaSlabOneImpl :: forall r. { | r } -> FontConfig

alfaSlabOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
alfaSlabOne = alfaSlabOneImpl
