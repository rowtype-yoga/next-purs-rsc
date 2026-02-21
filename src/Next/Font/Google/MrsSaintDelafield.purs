module Next.Font.Google.MrsSaintDelafield where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import mrsSaintDelafieldImpl :: forall r. { | r } -> FontConfig

mrsSaintDelafield :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
mrsSaintDelafield = mrsSaintDelafieldImpl
