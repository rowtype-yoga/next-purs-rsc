module Next.Font.Google.Allerta where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import allertaImpl :: forall r. { | r } -> FontConfig

allerta :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
allerta = allertaImpl
