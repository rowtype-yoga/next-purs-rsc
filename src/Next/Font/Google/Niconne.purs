module Next.Font.Google.Niconne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import niconneImpl :: forall r. { | r } -> FontConfig

niconne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
niconne = niconneImpl
