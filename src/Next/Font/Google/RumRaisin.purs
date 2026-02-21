module Next.Font.Google.RumRaisin where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import rumRaisinImpl :: forall r. { | r } -> FontConfig

rumRaisin :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
rumRaisin = rumRaisinImpl
