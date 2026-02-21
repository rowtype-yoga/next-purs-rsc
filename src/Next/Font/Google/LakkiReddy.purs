module Next.Font.Google.LakkiReddy where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import lakkiReddyImpl :: forall r. { | r } -> FontConfig

lakkiReddy :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
lakkiReddy = lakkiReddyImpl
