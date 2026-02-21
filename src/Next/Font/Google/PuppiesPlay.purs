module Next.Font.Google.PuppiesPlay where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import puppiesPlayImpl :: forall r. { | r } -> FontConfig

puppiesPlay :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
puppiesPlay = puppiesPlayImpl
