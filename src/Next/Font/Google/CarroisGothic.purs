module Next.Font.Google.CarroisGothic where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import carroisGothicImpl :: forall r. { | r } -> FontConfig

carroisGothic :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
carroisGothic = carroisGothicImpl
