module Next.Font.Google.Updock where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import updockImpl :: forall r. { | r } -> FontConfig

updock :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
updock = updockImpl
