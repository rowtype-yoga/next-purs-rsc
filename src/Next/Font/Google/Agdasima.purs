module Next.Font.Google.Agdasima where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import agdasimaImpl :: forall r. { | r } -> FontConfig

agdasima :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
agdasima = agdasimaImpl
