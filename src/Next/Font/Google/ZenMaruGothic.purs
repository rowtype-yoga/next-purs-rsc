module Next.Font.Google.ZenMaruGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import zenMaruGothicImpl :: forall r. { | r } -> FontConfig

zenMaruGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
zenMaruGothic = zenMaruGothicImpl
