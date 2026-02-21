module Next.Font.Google.FiraCode where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import firaCodeImpl :: forall r. { | r } -> FontConfig

firaCode :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
firaCode = firaCodeImpl
