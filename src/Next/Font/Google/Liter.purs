module Next.Font.Google.Liter where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import literImpl :: forall r. { | r } -> FontConfig

liter :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
liter = literImpl
