module Next.Font.Google.Poly where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import polyImpl :: forall r. { | r } -> FontConfig

poly :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
poly = polyImpl
