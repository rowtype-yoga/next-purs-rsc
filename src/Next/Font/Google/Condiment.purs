module Next.Font.Google.Condiment where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import condimentImpl :: forall r. { | r } -> FontConfig

condiment :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
condiment = condimentImpl
