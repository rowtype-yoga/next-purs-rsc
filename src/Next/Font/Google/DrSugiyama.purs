module Next.Font.Google.DrSugiyama where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import drSugiyamaImpl :: forall r. { | r } -> FontConfig

drSugiyama :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
drSugiyama = drSugiyamaImpl
