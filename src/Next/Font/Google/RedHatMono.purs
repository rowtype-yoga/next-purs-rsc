module Next.Font.Google.RedHatMono where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import redHatMonoImpl :: forall r. { | r } -> FontConfig

redHatMono :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
redHatMono = redHatMonoImpl
