module Next.Font.Google.JollyLodger where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import jollyLodgerImpl :: forall r. { | r } -> FontConfig

jollyLodger :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
jollyLodger = jollyLodgerImpl
