module Next.Font.Google.CarroisGothicSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import carroisGothicSCImpl :: forall r. { | r } -> FontConfig

carroisGothicSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
carroisGothicSC = carroisGothicSCImpl
