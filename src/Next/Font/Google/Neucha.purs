module Next.Font.Google.Neucha where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import neuchaImpl :: forall r. { | r } -> FontConfig

neucha :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
neucha = neuchaImpl
