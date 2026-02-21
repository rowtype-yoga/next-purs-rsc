module Next.Font.Google.Milonga where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import milongaImpl :: forall r. { | r } -> FontConfig

milonga :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
milonga = milongaImpl
