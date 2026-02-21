module Next.Font.Google.Gloock where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import gloockImpl :: forall r. { | r } -> FontConfig

gloock :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
gloock = gloockImpl
