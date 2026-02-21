module Next.Font.Google.Gwendolyn where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gwendolynImpl :: forall r. { | r } -> FontConfig

gwendolyn :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gwendolyn = gwendolynImpl
