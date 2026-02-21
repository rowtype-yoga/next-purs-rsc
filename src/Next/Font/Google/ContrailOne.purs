module Next.Font.Google.ContrailOne where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import contrailOneImpl :: forall r. { | r } -> FontConfig

contrailOne :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
contrailOne = contrailOneImpl
