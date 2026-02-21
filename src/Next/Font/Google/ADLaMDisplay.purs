module Next.Font.Google.ADLaMDisplay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import aDLaMDisplayImpl :: forall r. { | r } -> FontConfig

aDLaMDisplay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
aDLaMDisplay = aDLaMDisplayImpl
