module Next.Font.Google.Codystar where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import codystarImpl :: forall r. { | r } -> FontConfig

codystar :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
codystar = codystarImpl
