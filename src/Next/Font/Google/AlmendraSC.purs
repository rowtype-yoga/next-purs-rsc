module Next.Font.Google.AlmendraSC where

import Next.Font (FontConfig, GoogleFontOptions)
import Prim.Row (class Union)

foreign import almendraSCImpl :: forall r. { | r } -> FontConfig

almendraSC :: forall opts opts_. Union opts opts_ GoogleFontOptions => { | opts } -> FontConfig
almendraSC = almendraSCImpl
